1 ' 内盒打印程序
2 ' 泛海数据科技有限公司
3 ' 2019年4月

10 BREAK 0, 1 : '按F1键退出
20 BREAK 0 ON
30 ON BREAK 0 GOSUB HANDLECANCEL
40 ON ERROR GOTO HANDLEERR
50 OPEN "console:" AS 1
60 NASC 8

90 PRINT "DEFAULT": ' DEFAULT
100 F0$="21"
110 F1$="33010516"
120 F2$="DB"
130 F3$="JB"
140 START%=1
150 F4$="R6"
160 COUNT%=1

190 PRINT "GET INPUT": ' GET INPUT
200 PRINT #1: PRINT #1, "HUAWEICODE"
210 LINE INPUT #1, IN$
220 IF IN$<>"" THEN F1$=IN$
250 PRINT #1: PRINT #1, "YYMM"
260 LINE INPUT #1, IN$
270 IF LEN(IN$)<>4 THEN GOTO HANDLEERR
280 F3$ = CHR$(55 + VAL(LEFT$(IN$,2))) + CHR$(64 + VAL(RIGHT$(IN$,2)))
290 PRINT #1: PRINT #1, "R6[1/0]"
300 LINE INPUT #1, IN$
310 IF IN$="0" THEN F4$=""
320 PRINT #1: PRINT #1, "START"
330 LINE INPUT #1, IN$
340 IF IN$<>"" THEN START%=VAL(IN$)
350 PRINT #1: PRINT #1, "COUNT"
360 LINE INPUT #1, IN$
370 IF IN$<>"" THEN COUNT%=VAL(IN$)

490 PRINT "CONFIRM": ' CONFIRM
500 ALIGN 7
510 FONT "Univers",4,0,150
520 PRPOS 100,40
530 PRTXT "COUNT=" + STR$(COUNT%) + "  , R6=" + F4$
540 PRPOS 100,70
550 PRTXT F0$ + F1$ + F2$ + F3$ + FORMAT$(STR$(START%),"00000#")
560 PRINTFEED
570 PRINT #1: PRINT #1, "OK?[1]"
580 LINE INPUT #1, IN$
590 PRINT IN$
600 IF IN$<>"1" THEN GOSUB HANDLECANCEL

1000 PRINT "RUN LOOP" : ' RUN LOOP
1010 ALIGN 7: OPTIMIZE "BATCH" ON
1020 FOR I% = 0 TO COUNT%-1
1030 SER% = START% + I%
1040 CODE$ = F0$ + F1$ + F2$ + F3$ + FORMAT$(STR$(SER%),"00000#")
1050 CLL: BARSET "CODE128",2,1,3,35
1060 PRPOS 100,60
1070 PRBAR CODE$
1080 FONT "Univers",4,0,160
1090 PRPOS 100,25
1100 PRTXT CODE$
1110 PRPOS 600,25
1120 PRTXT F4$
1130 PRINTFEED
1150 NEXT
1200 BEEP

14999 EXIT: ' CLEAN UP
15000 CLOSE 1
15010 PRINT "END"
19990 END

19999 HANDLEERR: ' ERR HANDLER
20000 BEEP: BEEP: BEEP
20010 PRINT "ERROR", ERL, ERR
20020 GOTO EXIT

20099 HANDLECANCEL: ' CANCEL HANDLER
20100 PRINT "CANCELED"
20110 GOTO EXIT
