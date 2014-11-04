-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fira Mono:size=8",
    bgColor = "#2B303B",
    fgColor = "#969696",
    position = Static { xpos = 0 , ypos = -2, width = 1265, height = 22 },
    lowerOnStart = True,
    commands = [
        -- Run Weather "KPAO" ["-t","<tempF>F <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total>%","-H","60","-h","red","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","70","-h","red"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","0", "-h","red"] 10,
        Run DynNetwork ["-t","↓ <rx>kB/s  ↑ <tx>kB/s","-H","150","-h","red"] 10,
        Run Battery ["-t", "Battery: <left>%", "-L", "30", "-l", "red"] 10,
        --Run Volume "Pulse" "Master" ["-t", "Vol: <volume>%"] 1,
        Run Date "<fc=#999>%a %b %_d</fc> %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %battery%   %dynnetwork%   %date%  "
}
