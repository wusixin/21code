10 open "AUTOEXEC.BAT" for output as 1
20 input "Startup file name : ",s$
30 print #1,"RUN";chr$(34);s$;chr$(34)
40 close 1
