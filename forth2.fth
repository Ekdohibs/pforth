ASSEMBLER
: EXIT 0x28 0x29 ;
: (lit) 0x2b 0x21 0x29 ;
: (dodoes) 0x2b 0x21 0x2b 0x1b 0x29 ;
: DUP 0x30 0x21 0x29 ;
: SWAP 0x31 0x32 0x21 0x22 0x29 ;
: ROT 0x31 0x32 0x33 0x22 0x21 0x23 0x29 ;
: -ROT 0x31 0x32 0x33 0x21 0x23 0x22 0x29 ;
: OVER 0x32 0x30 0x22 0x21 0x29 ;
: PICK 0x32 0x44 0x0c 0x08 0x0d 0x07 0x22 0x29 ;
: DROP 0x31 0x29 ;
: 2DROP 0x31 0x31 0x29 ;
: 2DUP 0x32 0x30 0x22 0x21 0x22 0x29 ;
: 2SWAP 0x31 0x32 0x33 0x03 0x33 0x22 0x21 0x23 0x13 0x23 0x29 ;
: 2OVER 0x33 0x03 0x33 0x32 0x30 0x22 0x23 0x13 0x23 0x21 0x22 0x29 ;
: NIP 0x31 0x20 0x29 ;
: TUCK 0x31 0x32 0x21 0x22 0x21 0x29 ;
: ?DUP 0x30 0x39 0x01 0x00 0x29 0x21 0x29 ;
: >R 0x31 0x01 0x29 ;
: R> 0x11 0x21 0x29 ;
: R@ 0x10 0x21 0x29 ;
: ! 0x32 0x31 0x26 0x29 ;
: C! 0x32 0x31 0x36 0x29 ;
: @ 0x30 0x04 0x20 0x29 ;
: C@ 0x30 0x14 0x20 0x29 ;
: AND 0x32 0x30 0x2c 0x20 0x29 ;
: OR 0x32 0x30 0x2d 0x20 0x29 ;
: XOR 0x32 0x30 0x2e 0x20 0x29 ;
: INVERT 0x30 0x2f 0x20 0x29 ;
: (branch) 0x2b 0x1b 0x29 ;
: (0branch) 0x32 0x2b 0x3a 0x01 0x00 0x1b 0x29 ;
: ROLL 0x32 0x41 0x4b 0x44 0x0c 0x08 0x0d 0x05 0x21 0x31 0x44 0x4a 0x4a 0x07 0x25 0x49 0x49 0x45 0x48 0x3b 0xf5 0xff 0x29 ;
: + 0x32 0x31 0x0c 0x22 0x29 ;
: - 0x32 0x31 0x0d 0x22 0x29 ;
: +! 0x32 0x41 0x07 0x31 0x0c 0x42 0x25 0x29 ;
: * 0x32 0x31 0x0e 0x22 0x29 ;
: U< 0x32 0x30 0x0d 0x20 0x29 ;
: U> 0x31 0x32 0x0d 0x21 0x29 ;
: M* 0x32 0x31 0x0f 0x22 0x21 0x29 ;
: UM* 0x32 0x31 0x0e 0x22 0x21 0x29 ;
: 0= 0x30 0x39 0x03 0x00 0x2f 0x20 0x29 0x4d 0x00 0x00 0x20 0x29 ;
: 0<> 0x30 0x39 0x01 0x00 0x29 0x4d 0xff 0xff 0x20 0x29 ;
: 0< 0x32 0x3f 0x21 0x29 ;
: 0> 0x32 0x3a 0x02 0x00 0x22 0x29 0x3f 0x2f 0x21 0x29 ;
: <> 0x32 0x30 0x0d 0x3a 0x02 0x00 0x20 0x29 0x4d 0xff 0xff 0x20 0x29 ;
: = 0x32 0x30 0x0d 0x3a 0x05 0x00 0x4d 0xff 0xff 0x20 0x29 0x4d 0x00 0x00 0x20 0x29 ;
: EMPTYR 0x4d 0x00 0x03 0x19 0x29 ;
: EMPTYS 0x4d 0x00 0x02 0x18 0x29 ;
: DEPTH 0x08 0x4e 0x00 0x02 0x0d 0x44 0x4e 0x01 0x00 0x3d 0x21 0x29 ;
: 2* 0x4e 0x01 0x00 0x30 0x3e 0x20 0x29 ;
: 2/ 0x4e 0x01 0x00 0x30 0x3d 0x20 0x29 ;
: RSHIFT 0x32 0x30 0x3c 0x20 0x29 ;
: LSHIFT 0x32 0x30 0x3e 0x20 0x29 ;
: 2>R 0x32 0x31 0x01 0x02 0x29 ;
: 2R> 0x12 0x11 0x21 0x22 0x29 ;
: 2R@ 0x12 0x10 0x02 0x21 0x22 0x29 ;
: 1+ 0x30 0x49 0x20 0x29 ;
: 1- 0x30 0x46 0x20 0x29 ;
: EXECUTE 0x31 0x1a ;
: */MOD 0x33 0x32 0x31 0x0f 0x1f 0x23 0x22 0x29 ;
: */ 0x33 0x32 0x31 0x0f 0x1f 0x22 0x29 ;
: /MOD 0x33 0x32 0x3f 0x1f 0x23 0x22 0x29 ;
: / 0x33 0x32 0x3f 0x1f 0x22 0x29 ;
: MOD 0x33 0x32 0x3f 0x1f 0x23 0x29 ;
: UM/MOD 0x33 0x31 0x32 0x1e 0x23 0x22 0x29 ;
: FM/MOD 0x33 0x31 0x32 0x1f 0x23 0x22 0x29 ;
: O+ 0x32 0x31 0x0c 0x22 0x21 0x29 ;
: UDM/MOD 0x33 0x31 0x32 0x1e 0x23 0x22 0x21 0x29 ;
: RAWKEY 0x50 0x21 0x29 ;
: EMIT 0x31 0x51 0x29 ;
\ : < 0x32 0x31 0x0d 0x40 0x3f 0x43 0x2e 0x21 0x29 ;
\ : < 0x32 0x31 0x0d 0x40 0x3f 0x43 0x21 0x29 ;
: < 0x32 0x3f 0x41 0x32 0x22 0x2e 0x45 0x3f 0x2f 0x39 0x04 0x00 0x32 0x3f 0x21 0x29 0x31 0x43 0x0d 0x21 0x29 ;
\ : > 0x31 0x32 0x0d 0x40 0x3f 0x43 0x2e 0x21 0x29 ;
\ : > 0x31 0x32 0x0d 0x40 0x3f 0x43 0x21 0x29 ;
: > 0x31 0x32 0x21 0x3f 0x41 0x32 0x22 0x2e 0x45 0x3f 0x2f 0x39 0x04 0x00 0x32 0x3f 0x21 0x29 0x31 0x43 0x0d 0x21 0x29 ;
: NEGATE 0x32 0x4d 0x00 0x00 0x0d 0x22 0x29 ;
\ : (do) 0x32 0x31 0x01 0x02 0x29 ;
: (do) 0x2b 0x01 0x32 0x33 0x03 0x02 0x29 ;
: (?do) 0x2b 0x01 0x40 0x32 0x31 0x01 0x02 0x0d 0x42 0x3a 0x04 0x00 0x12 0x12 0x12 0x1b 0x29 ;
: I 0x10 0x21 0x29 ;
: J 0x13 0x12 0x22 0x12 0x10 0x02 0x32 0x02 0x03 0x21 0x29 ;
: UNLOOP 0x12 0x12 0x12 0x29 ;
: (loop) 0x12 0x4a 0x10 0x02 0x0d 0x2b 0x3a 0x04 0x00 0x12 0x12 0x12 0x29 0x1b 0x29 ;
: (+loop) 0x12 0x41 0x31 0x0c 0x10 0x46 0x02 0x43 0x40 0x0d 0x3f 0x21 0x42 0x12 0x02 0x0d 0x3f 0x32 0x2e 0x45 0x2b 0x3a 0x02 0x00 0x1b 0x29 0x12 0x12 0x12 0x29 ;
\ : (+loop) 0x12 0x30 0x0c 0x10 0x02 0x32 0x0d 0x40 0x3f 0x21 0x42 0x12 0x02 0x0d 0x3f 0x22 0x2e 0x2b 0x3a 0x04 0x00 0x12 0x12 0x12 0x29 0x1b 0x29 ;
: WAIT 0x00 0x29 ;
: LEAVE 0x11 0x11 0x11 0x1b 0x29 ;

\ : DEBUG 0x4d 0x80 0x00 0x51 0x29 ;
: DEBUG 0x29 ;

FORTH
32 CONSTANT BL
0 CONSTANT FALSE
-1 CONSTANT TRUE
0x100 CONSTANT (source)
0x104 CONSTANT >IN
0x106 CONSTANT SOURCE-ID
0x108 CONSTANT BASE
0x10a CONSTANT STATE
0x10c CONSTANT LATEST
0x10e CONSTANT ENVDICO
0x110 CONSTANT SPAN
0x112 CONSTANT (here)
0x114 CONSTANT LT
0x116 CONSTANT #TIB
0x118 CONSTANT TIB

: CHARS ;
: ALIGN ;
: ALIGNED ;
: CELL+ 2 + ;
: CELL- 2 - ;
: CHAR+ 1+ ;
: CELLS 2* ;
: 2! SWAP OVER ! CELL+ ! ;
: 2@ DUP CELL+ @ SWAP @ ;
: SOURCE (source) 2@ ;
: S>D DUP 0< ;
: MAX 2DUP > IF DROP ELSE NIP THEN ;
: MIN 2DUP > IF NIP ELSE DROP THEN ;
: D+ ROT + -ROT O+ ROT + ;
: HEX 16 BASE ! ;
: DECIMAL 10 BASE ! ;
: TUCK SWAP OVER ;
: NIP SWAP DROP ;
: ABS DUP 0< IF NEGATE THEN ;
: (marker) LATEST ! (here) ! ;
: TYPE DUP 0> IF OVER + SWAP DO I C@ EMIT LOOP ELSE 2DROP THEN ;
\ : RSTR DUP BEGIN DUP C@ WHILE 1- REPEAT 1+ SWAP OVER - 1+ ;
: RSTR 1+ DUP 2 + C@ 127 AND TUCK - SWAP ;
: CR 10 EMIT ;
: SPACE 32 EMIT ;
: SPACES DUP 0> IF 0 DO SPACE LOOP ELSE DROP THEN ;
: STR= 0 DO OVER C@ OVER C@ <> IF UNLOOP 2DROP FALSE EXIT THEN SWAP 1+ SWAP 1+ LOOP 2DROP TRUE ;
\ : IMMEDIATE 1 LATEST @ 1- C! ;
: IMMEDIATE LATEST @ 1- DUP C@ 128 OR SWAP C! ;
: HERE (here) @ ;
: [ FALSE STATE ! ; IMMEDIATE
: ] TRUE STATE ! ;
: ALLOT (here) +! ;
: , HERE ! 2 ALLOT ;
: C, HERE C! 1 ALLOT ;
: SKIP-WHITE BEGIN DUP C@ 33 < WHILE 1+ 2DUP = IF EXIT THEN REPEAT ;
: EXIT-IF-END SOURCE NIP >IN @ = IF SOURCE + 0 R> DROP THEN ;
: PARSE-LIMITS SOURCE OVER + SWAP >IN @ + ;
: >IN-END SOURCE NIP >IN ! ;
: COUNTED-STRING DUP HERE C! HERE 1+ -ROT OVER + SWAP DO I C@ OVER C! 1+ LOOP DROP HERE ;
: PARSE-WORD EXIT-IF-END PARSE-LIMITS SKIP-WHITE 2DUP = IF >IN-END DROP 0 EXIT THEN DUP >R BEGIN DUP C@ 32 > WHILE 1+ 2DUP = IF >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP ;
: PARSE SOURCE NIP >IN @ = IF DROP SOURCE + 0 EXIT THEN PARSE-LIMITS DUP >R ROT >R BEGIN DUP C@ R@ <> WHILE 1+ 2DUP = IF R> DROP >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT R> DROP NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP ;

\ TODO: Fix WORD not skipping leading delimiters
: WORD SOURCE NIP >IN @ = IF DROP 0 HERE C! HERE EXIT THEN PARSE-LIMITS DUP >R ROT >R BEGIN DUP C@ R@ <> WHILE 1+ 2DUP = IF R> DROP >IN-END DROP R@ - R> SWAP EXIT THEN REPEAT R> DROP NIP DUP SOURCE DROP - 1+ >IN ! R@ - R> SWAP COUNTED-STRING ;

: HEADER PARSE-WORD TUCK 0 C, OVER + SWAP DO I C@ C, LOOP LATEST @ , C, ;
: : HEADER HERE DUP LT ! 42 C, ] ;
: UNUSED HERE NEGATE ;
: NCHAR DUP C@ DUP 58 < IF 48 - ELSE DUP 97 < IF 55 - ELSE 87 - THEN THEN ;
: >NUMBER DUP >R 0 DO NCHAR DUP BASE @ < OVER 0< INVERT AND IF 2SWAP BASE @ * 0 SWAP ROT BASE @ UM* D+ ROT 0 D+ ROT 1+ ELSE DROP I UNLOOP R> SWAP - EXIT THEN LOOP R> DROP 0 ;
: NUMBER 0 0 2SWAP OVER C@ 45 = IF SWAP 1+ SWAP 1- >NUMBER 2SWAP DROP NEGATE -ROT ELSE >NUMBER ROT DROP THEN ; 
: SAVE-INPUT >IN @ 1 ;
: RESTORE-INPUT DUP 1 = IF DROP >IN ! FALSE ELSE 0 ?DO DROP LOOP TRUE THEN ;
: COUNT DUP 1+ SWAP C@ ;
: CHAR PARSE-WORD DROP C@ ;
: FILL -ROT DUP 0> IF OVER + SWAP DO DUP I C! LOOP ELSE 2DROP THEN DROP ;
: ERASE 0 FILL ;
: ( 41 PARSE 2DROP ; IMMEDIATE
: .( 41 PARSE TYPE ; IMMEDIATE
: \ 10 PARSE 2DROP ; IMMEDIATE
: THEN HERE SWAP ! ; IMMEDIATE
: BEGIN HERE ; IMMEDIATE
: FIND-WORD-DICO SWAP >R BEGIN DUP 4 - RSTR R@ = IF 2 PICK R@ STR= IF NIP R> DROP EXIT THEN ELSE DROP THEN 3 - @ DUP 0= UNTIL NIP R> DROP ;
: FIND-WORD LATEST @ FIND-WORD-DICO ;
: FIND DUP COUNT FIND-WORD DUP IF NIP DUP 1- C@ 128 AND IF 1 ELSE -1 THEN THEN ;
: ' PARSE-WORD FIND-WORD ;
: POSTPONE ' DUP 1- C@ 128 AND IF , ELSE ['] (lit) , , ['] , , THEN ; IMMEDIATE
\ : LITERAL [ ' (lit) , ] , , ; IMMEDIATE
: LITERAL ['] (lit) , , ; IMMEDIATE
\ : DOES> LATEST @ HERE OVER 1+ DUP ['] (branch) ! CELL+ TUCK ! 4 + POSTPONE LITERAL ] ;
: DOES> ['] (dodoes) LATEST @ 1+ ! R> LATEST @ 5 + ! ;
: ['] ' POSTPONE LITERAL ; IMMEDIATE
: [COMPILE] ' , ; IMMEDIATE
: ; ['] EXIT , LATEST ! POSTPONE [ ; IMMEDIATE
: [CHAR] CHAR POSTPONE LITERAL ; IMMEDIATE
: CREATE HEADER HERE LATEST ! 42 C, HERE 6 + POSTPONE LITERAL ['] EXIT , ;
: VARIABLE CREATE 2 ALLOT ;
: CONSTANT HEADER HERE LATEST ! 77 C, , 33 C, 41 C, ;
: MARKER HERE HEADER HERE SWAP 42 C, POSTPONE LITERAL LATEST @ POSTPONE LITERAL ['] (marker) , ['] EXIT , LATEST ! ;
: IF ['] (0branch) , HERE 0 , ; IMMEDIATE
: ELSE ['] (branch) , HERE SWAP 0 , HERE SWAP ! ; IMMEDIATE
: UNTIL ['] (0branch) , , ; IMMEDIATE
: REPEAT ['] (branch) , , HERE SWAP ! ; IMMEDIATE
: WHILE ['] (0branch) , HERE SWAP 0 , ; IMMEDIATE
: CASE 0 ; IMMEDIATE
: ENDCASE ['] DROP , BEGIN DUP 0<> WHILE HERE SWAP ! REPEAT DROP ; IMMEDIATE
: OF ['] OVER , ['] = , ['] (0branch) , HERE 0 , ['] DROP , ; IMMEDIATE
: ENDOF ['] (branch) , HERE 0 , HERE ROT ! ; IMMEDIATE
: S" 34 PARSE ['] (branch) , HERE 0 , -ROT 2DUP OVER + SWAP ?DO I C@ C, LOOP NIP SWAP DUP HERE SWAP ! 2 + POSTPONE LITERAL POSTPONE LITERAL ; IMMEDIATE
: PAD HERE 36 + ;
: VALUE HEADER HERE LATEST ! 77 C, , 33 C, 41 C, ;
: TO PARSE-WORD FIND-WORD 1+ STATE @ IF POSTPONE LITERAL ['] ! , ELSE ! THEN ; IMMEDIATE
: COMPILE, , ;
: AGAIN ['] (branch) , , ;
: ABORT EMPTYS QUIT ;
: COMPILE-WORD 2DUP FIND-WORD ?DUP IF -ROT 2DROP DUP 1- C@ 128 AND IF EXECUTE ELSE , THEN ELSE 2DUP NUMBER 0= IF DROP -ROT 2DROP POSTPONE LITERAL ELSE 2DROP TYPE SPACE 63 EMIT ABORT THEN THEN ;
: COUNT DUP 1+ SWAP C@ ;
: RECURSE LT @ , ; IMMEDIATE
: :NONAME HERE DUP LT ! 42 C, LATEST @ ] ;
: >BODY 7 + ;
: ENVIRONMENT? ENVDICO @ FIND-WORD-DICO DUP IF EXECUTE TRUE THEN ;
: D0= 0= SWAP 0= AND ;
: HOLD HERE @ 1- DUP HERE ! C! ;
: # BASE @ UDM/MOD ROT DUP 9 > IF 55 + ELSE 48 + THEN HOLD ;
: #S BEGIN # 2DUP D0= UNTIL ;
: ." POSTPONE S" ['] TYPE , ; IMMEDIATE
: C" 34 PARSE ['] (branch) , HERE 0 , -ROT HERE -ROT DUP C, OVER + SWAP ?DO I C@ C, LOOP SWAP HERE SWAP ! POSTPONE LITERAL ; IMMEDIATE
: <# PAD HERE ! ;
: #> 2DROP HERE @ PAD OVER - ;
: SIGN 0< IF 45 HOLD THEN ;
: CONVERT -1 >NUMBER DROP ;
: MOVE DUP 0= IF DROP 2DROP EXIT THEN -ROT 2DUP U> IF ROT 0 DO OVER C@ OVER C! 1+ SWAP 1+ SWAP LOOP ELSE 2 PICK TUCK + -ROT + SWAP ROT 0 DO 1- SWAP 1- SWAP OVER C@ OVER C! LOOP THEN 2DROP ;
: . DUP >R ABS 0 <# BL HOLD #S R> SIGN #> TYPE ;
: U. 0 <# BL HOLD #S #> TYPE ;
: .R >R DUP >R ABS 0 <# BL HOLD #S R> SIGN #> R> OVER - SPACES TYPE ;
: U.R >R 0 <# BL HOLD #S #> R> OVER - SPACES TYPE ;
: WITHIN OVER - >R - R> U< ;
\ : DO ['] (do) , HERE -1 ; IMMEDIATE
: DO ['] (do) , HERE 0 , HERE ; IMMEDIATE
\ : ?DO ['] (?do) , HERE 0 , HERE SWAP 1 ; IMMEDIATE
: ?DO ['] (?do) , HERE 0 , HERE ; IMMEDIATE
\ : LEAVE ['] (branch) , HERE 0 , 0 ; IMMEDIATE
\ : LEAVE OVER POSTPONE LITERAL ['] (leave) , ; IMMEDIATE
\ : LOOP ['] (loop) , BEGIN DUP INVERT IF HERE CELL+ ROT ! THEN 0= WHILE REPEAT , ; IMMEDIATE
: LOOP ['] (loop) , , HERE SWAP ! ; IMMEDIATE
\ : +LOOP ['] (+loop) , BEGIN DUP INVERT IF HERE CELL+ ROT ! THEN 0= WHILE REPEAT , ; IMMEDIATE
: +LOOP ['] (+loop) , , HERE SWAP ! ; IMMEDIATE
: ACCEPT OVER SWAP OVER + 1- SWAP BEGIN RAWKEY DUP 9 = IF DROP 32 THEN DUP 31 > IF DUP 0x7f = IF EMIT 1- ELSE DUP EMIT OVER C! 1+ OVER MIN THEN ELSE 10 = IF NIP SWAP - EXIT ELSE WAIT THEN THEN AGAIN ;
\ : ACCEPT OVER SWAP OVER + 1- SWAP BEGIN RAWKEY DUP 9 = IF DROP 32 THEN DUP 31 > IF DUP 0x7f = IF DROP 1- ELSE OVER C! 1+ OVER MIN THEN ELSE 10 = IF NIP SWAP - EXIT ELSE WAIT THEN THEN AGAIN ;
: EXPECT ACCEPT SPAN ! ;
: QUERY 0 >IN ! 0 SOURCE-ID ! TIB DUP 80 ACCEPT SPACE (source) 2! ;
: REFILL SOURCE-ID @ IF FALSE ELSE 0 >IN ! TIB DUP 80 ACCEPT SPACE (source) 2! TRUE THEN ;
\ : REFILL SOURCE-ID @ IF FALSE ELSE 0 >IN ! TIB DUP 80 ACCEPT (source) 2! TRUE THEN ;
: INTERPRET-WORD 2DUP FIND-WORD ?DUP IF -ROT 2DROP EXECUTE ELSE 2DUP NUMBER 0= IF DROP -ROT 2DROP ELSE 2DROP TYPE SPACE 63 EMIT ABORT THEN THEN ;
: EVALUATE SOURCE 2>R >IN @ >R SOURCE-ID @ >R -1 SOURCE-ID ! 0 >IN ! (source) 2! BEGIN PARSE-WORD ?DUP WHILE STATE @ IF COMPILE-WORD ELSE INTERPRET-WORD THEN REPEAT DROP R> SOURCE-ID ! R> >IN ! 2R> (source) 2! ;
: QUIT EMPTYR CR BEGIN REFILL WHILE BEGIN PARSE-WORD ?DUP WHILE STATE @ IF COMPILE-WORD ELSE INTERPRET-WORD THEN REPEAT DROP SPACE 79 EMIT 75 EMIT DEBUG CR REPEAT ;
\ : QUIT EMPTYR CR BEGIN REFILL WHILE BEGIN PARSE-WORD ?DUP WHILE STATE @ IF COMPILE-WORD ELSE INTERPRET-WORD THEN REPEAT DROP REPEAT ;
: (abort") ROT IF TYPE ABORT THEN 2DROP ;
: ABORT" POSTPONE S" ['] (abort") , ; IMMEDIATE
: DABS DUP 0< IF OVER NEGATE ROT IF SWAP INVERT ELSE SWAP NEGATE THEN THEN ;
: SM/REM OVER >R 2DUP XOR >R ABS >R DABS R> UM/MOD R> 0< IF NEGATE THEN SWAP R> 0< IF NEGATE THEN SWAP ;
: KEY BEGIN RAWKEY DUP 31 > OVER 127 < AND IF EXIT THEN DROP AGAIN ;
: COLD 82 EMIT 101 EMIT 97 EMIT 100 EMIT 121 EMIT QUIT ;
