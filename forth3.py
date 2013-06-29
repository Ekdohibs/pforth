import curses
import time


w=curses.initscr()
w.nodelay(1)
w.scrollok(True)
curses.noecho()
curses.raw()

def s16(x):
    if x&0x8000:
        return (x&0xffff)-0x10000
    return x&0xffff

def u16(x):
    return x&0xffff

def s32(x):
    if x&0x80000000:
        return (x&0xffffffff)-0x100000000
    return x&0xffffffff

def u32(x):
    return x&0xffffffff

ITABLE = {
    0x28:"self.I=self.rpop()",
    0x29:"self.PC=self.read(self.I)\nself.I=u16(self.I+2)",
    0x2a:"self.rpush(self.I)\nself.I=u16(self.PC+2)\nself.PC=self.read(self.PC)",
    0x2b:"self.X=self.read(self.I)\nself.I=u16(self.I+2)",

    0x08:"self.X=self.SP",
    0x09:"self.X=self.RP",
    0x0a:"self.X=self.PC",
    0x0b:"self.X=self.I",

    0x00:"self.paused=True",
    
    0x01:"self.rpush(self.X)",
    0x02:"self.rpush(self.Y)",
    0x03:"self.rpush(self.Z)",
    0x10:"self.X=self.read(self.RP)",
    0x11:"self.X=self.rpop()",
    0x12:"self.Y=self.rpop()",
    0x13:"self.Z=self.rpop()",

    0x20:"self.write(self.SP,self.X)",
    0x21:"self.push(self.X)",
    0x22:"self.push(self.Y)",
    0x23:"self.push(self.Z)",
    0x30:"self.X=self.read(self.SP)",
    0x31:"self.X=self.pop()",
    0x32:"self.Y=self.pop()",
    0x33:"self.Z=self.pop()",
    
    0x04:"self.X=self.read(self.X)",
    0x05:"self.X=self.read(self.Y)",
    0x06:"self.Y=self.read(self.X)",
    0x07:"self.Y=self.read(self.Y)",
    
    0x14:"self.X=self.readC(self.X)",
    0x15:"self.X=self.readC(self.Y)",
    0x16:"self.Y=self.readC(self.X)",
    0x17:"self.Y=self.readC(self.Y)",
    
    0x25:"self.write(self.X,self.Y)",
    0x26:"self.write(self.Y,self.X)",
    
    0x35:"self.writeC(self.X,self.Y)",
    0x36:"self.writeC(self.Y,self.X)",
    
    0x0c:"n=self.X+self.Y\nself.Y=u16(n)\nself.X=u16(n>>16)",
    0x0d:"n=self.X-self.Y\nself.Y=u16(n)\nself.X=u16(n>>16)",
    0x0e:"n=self.X*self.Y\nself.Y=u16(n)\nself.X=u16(n>>16)", # UM*
    0x0f:"n=s16(self.X)*s16(self.Y)\nself.Y=u16(n)\nself.X=u16(n>>16)", # M*
    0x1e:"n=(self.X<<16)+self.Y\nself.Y=u16(n//self.Z)\nself.X=u16((n//self.Z)>>16)\nself.Z=u16(n%self.Z)",
    0x1f:"n=s32((self.X<<16)+self.Y)\nself.Y=u16(n//s16(self.Z))\nself.X=u16((n//s16(self.Z))>>16)\nself.Z=u16(n%(s16(self.Z))",
    0x2c:"self.X=u16(self.X&self.Y)",
    0x2d:"self.X=u16(self.X|self.Y)",
    0x2e:"self.X=u16(self.X^self.Y)",
    0x2f:"self.X=u16(~self.X)",
    0x3c:"self.X>>=self.Y",
    0x3d:"self.X=u16(s16(self.X)>>self.Y)",
    0x3e:"self.X=u16(self.X<<min(16,self.Y))\nself.Y=u16(self.X<<min(16, max(0, self.Y-16)))",
    0x3f:"if s16(self.Y)<0:  self.X=u16(-1)\nelse:\n  self.X=0",

    0x38:"self.PC=u16(self.PC+self.read(self.PC))\nself.PC=u16(self.PC+2)",
    0x39:"if self.X:\n  self.PC=u16(self.PC+self.read(self.PC))\nself.PC=u16(self.PC+2)",
    0x3a:"if self.Y:\n  self.PC=u16(self.PC+self.read(self.PC))\nself.PC=u16(self.PC+2)",
    0x3b:"if self.Z:\n  self.PC=u16(self.PC+self.read(self.PC))\nself.PC=u16(self.PC+2)",

    0x18:"self.SP=self.X",
    0x19:"self.RP=self.X",
    0x1a:"self.PC=self.X",
    0x1b:"self.I=self.X",

    0x40:"self.Z=self.X",
    0x41:"self.Z=self.Y",
    0x42:"self.X=self.Z",
    0x43:"self.Y=self.Z",
    0x44:"self.X=self.Y",
    0x45:"self.Y=self.X",

    0x46:"self.X=u16(self.X-1)",
    0x47:"self.Y=u16(self.Y-1)",
    0x48:"self.Z=u16(self.Z-1)",

    0x49:"self.X=u16(self.X+1)",
    0x4a:"self.Y=u16(self.Y+1)",
    0x4b:"self.Z=u16(self.Z+1)",

    0x4d:"self.X=self.read(self.PC)\nself.PC=u16(self.PC+2)",
    0x4e:"self.Y=self.read(self.PC)\nself.PC=u16(self.PC+2)",
    0x4f:"self.Z=self.read(self.PC)\nself.PC=u16(self.PC+2)",

    0x50:"self.X=w.getch()",
    #0x50:"self.X=ord(input()[0])",
    0x51:"self.insts.append(0)\nif self.X==0x80:\n  print(self.insts)\nif self.X==0x7f:\n  y,x=w.getyx()\n  x-=1\n  w.delch(y,x)\n  w.move(y,x)\nelse:\n  try:\n    w.echochar(self.X)\n  except:\n    w.erase()\n    w.move(0,0)\n    w.echochar(self.X)",
    #0x51:"self.insts.append(0)\nif self.X==0x80:\n  print(self.insts)\nif self.X==0x7f:\n  y,x=w.getyx()\n  x-=1\n  w.delch(y,x)\n  w.move(y,x)\nelse:\n  w.echochar(self.X)",
    #0x51:"print(chr(self.X),end='')\ntime.sleep(0.1)",
    0x52: "print(self.X, self.Y, self.Z, self.I, self.SP)",
}

class ForthVM:
    def __init__(self):
        self.memory = [0]*0x10000
        self.paused = False
        self.SP = 0x200
        self.RP = 0x300
        self.X = 0
        self.Y = 0
        self.Z = 0
        self.I = 0
        self.PC = 0x400

    def readC(self, addr):
        return self.memory[addr]

    def writeC(self,addr,value):
        self.memory[addr]=value&0xff

    def read(self,addr):
        return self.memory[addr]+(self.memory[addr+1]<<8)

    def write(self,addr,value):
        self.memory[addr]=value&0xff
        self.memory[addr+1]=(value>>8)&0xff

    def push(self,value):
        self.SP+=2
        self.write(self.SP,value)

    def pop(self):
        n = self.read(self.SP)
        self.SP-=2
        return n

    def rpush(self,value):
        self.RP+=2
        self.write(self.RP,value)

    def rpop(self):
        n = self.read(self.RP)
        self.RP-=2
        return n

    def printstack(self):
        l=[]
        for i in range(0x202, self.SP+2, 2):
            l.append(self.read(i))
        print(l)

    def run(self):
        self.insts=[0]
        while True:
            self.insts[-1]+=1
            #print(self.PC)
            """if getc(self.PC)!=None:
            #if True:
                #print(self.PC)
                print(getc(self.PC))
                self.printstack()#"""
            instr = self.memory[self.PC]
            self.PC += 1
            exec(ITABLE[instr])
            if self.paused:
                time.sleep(0.01)
                self.paused=False

def getc(i):
    for key,k in df.items():
        if k==i:
            return key

fvm = ForthVM()
f = open('forth.a','r')
fvm.memory = eval(f.read())
f.close()

f = open('forth.dico','r')
df = eval(f.read())
f.close()


fvm.run()
