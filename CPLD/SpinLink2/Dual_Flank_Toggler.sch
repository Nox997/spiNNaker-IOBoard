<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="NIBBLE(0)" />
        <signal name="XLXN_10" />
        <signal name="NIBBLE(1)" />
        <signal name="XLXN_12" />
        <signal name="NIBBLE(2)" />
        <signal name="XLXN_14" />
        <signal name="NIBBLE(3)" />
        <signal name="XLXN_16" />
        <signal name="NIBBLE(4)" />
        <signal name="XLXN_18" />
        <signal name="NIBBLE(5)" />
        <signal name="XLXN_20" />
        <signal name="NIBBLE(6)" />
        <signal name="SPLI(6:0)" />
        <signal name="SPLI(6)" />
        <signal name="SPLI(5)" />
        <signal name="SPLI(4)" />
        <signal name="SPLI(3)" />
        <signal name="SPLI(2)" />
        <signal name="SPLI(1)" />
        <signal name="SPLI(0)" />
        <signal name="NIBBLE(6:0)" />
        <signal name="CLR" />
        <port polarity="Input" name="SPLI(6:0)" />
        <port polarity="Output" name="NIBBLE(6:0)" />
        <port polarity="Input" name="CLR" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="fddc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="NIBBLE(0)" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_5">
            <blockpin signalname="SPLI(0)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="NIBBLE(0)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="NIBBLE(1)" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_7">
            <blockpin signalname="SPLI(1)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_10" name="D" />
            <blockpin signalname="NIBBLE(1)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="NIBBLE(2)" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_9">
            <blockpin signalname="SPLI(2)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_12" name="D" />
            <blockpin signalname="NIBBLE(2)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="NIBBLE(3)" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_11">
            <blockpin signalname="SPLI(3)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_14" name="D" />
            <blockpin signalname="NIBBLE(3)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="NIBBLE(4)" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_13">
            <blockpin signalname="SPLI(4)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_16" name="D" />
            <blockpin signalname="NIBBLE(4)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="NIBBLE(5)" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_15">
            <blockpin signalname="SPLI(5)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_18" name="D" />
            <blockpin signalname="NIBBLE(5)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="NIBBLE(6)" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="fddc" name="XLXI_17">
            <blockpin signalname="SPLI(6)" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_20" name="D" />
            <blockpin signalname="NIBBLE(6)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2528" y="416" name="XLXI_4" orien="M0" />
        <branch name="XLXN_1">
            <wire x2="2208" y1="384" y2="640" x1="2208" />
            <wire x2="2224" y1="640" y2="640" x1="2208" />
            <wire x2="2304" y1="384" y2="384" x1="2208" />
        </branch>
        <instance x="2224" y="896" name="XLXI_5" orien="R0" />
        <branch name="NIBBLE(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2984" y="640" type="branch" />
            <wire x2="2624" y1="384" y2="384" x1="2528" />
            <wire x2="2624" y1="384" y2="640" x1="2624" />
            <wire x2="3344" y1="640" y2="640" x1="2624" />
            <wire x2="2624" y1="640" y2="640" x1="2608" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2192" y1="976" y2="1232" x1="2192" />
            <wire x2="2208" y1="1232" y2="1232" x1="2192" />
            <wire x2="2288" y1="976" y2="976" x1="2192" />
        </branch>
        <branch name="NIBBLE(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1232" type="branch" />
            <wire x2="2608" y1="976" y2="976" x1="2512" />
            <wire x2="2608" y1="976" y2="1232" x1="2608" />
            <wire x2="2976" y1="1232" y2="1232" x1="2608" />
            <wire x2="3344" y1="1232" y2="1232" x1="2976" />
            <wire x2="2608" y1="1232" y2="1232" x1="2592" />
        </branch>
        <instance x="2512" y="1008" name="XLXI_6" orien="M0" />
        <instance x="2208" y="1488" name="XLXI_7" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2192" y1="1568" y2="1824" x1="2192" />
            <wire x2="2208" y1="1824" y2="1824" x1="2192" />
            <wire x2="2288" y1="1568" y2="1568" x1="2192" />
        </branch>
        <branch name="NIBBLE(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1824" type="branch" />
            <wire x2="2608" y1="1568" y2="1568" x1="2512" />
            <wire x2="2608" y1="1568" y2="1824" x1="2608" />
            <wire x2="2976" y1="1824" y2="1824" x1="2608" />
            <wire x2="3344" y1="1824" y2="1824" x1="2976" />
            <wire x2="2608" y1="1824" y2="1824" x1="2592" />
        </branch>
        <instance x="2512" y="1600" name="XLXI_8" orien="M0" />
        <instance x="2208" y="2080" name="XLXI_9" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="2176" y1="2176" y2="2432" x1="2176" />
            <wire x2="2192" y1="2432" y2="2432" x1="2176" />
            <wire x2="2272" y1="2176" y2="2176" x1="2176" />
        </branch>
        <branch name="NIBBLE(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2968" y="2432" type="branch" />
            <wire x2="2592" y1="2176" y2="2176" x1="2496" />
            <wire x2="2592" y1="2176" y2="2432" x1="2592" />
            <wire x2="3344" y1="2432" y2="2432" x1="2592" />
            <wire x2="2592" y1="2432" y2="2432" x1="2576" />
        </branch>
        <instance x="2496" y="2208" name="XLXI_10" orien="M0" />
        <instance x="2192" y="2688" name="XLXI_11" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2160" y1="2784" y2="3040" x1="2160" />
            <wire x2="2176" y1="3040" y2="3040" x1="2160" />
            <wire x2="2256" y1="2784" y2="2784" x1="2160" />
        </branch>
        <branch name="NIBBLE(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="3040" type="branch" />
            <wire x2="2576" y1="2784" y2="2784" x1="2480" />
            <wire x2="2576" y1="2784" y2="3040" x1="2576" />
            <wire x2="2960" y1="3040" y2="3040" x1="2576" />
            <wire x2="3344" y1="3040" y2="3040" x1="2960" />
            <wire x2="2576" y1="3040" y2="3040" x1="2560" />
        </branch>
        <instance x="2480" y="2816" name="XLXI_12" orien="M0" />
        <instance x="2176" y="3296" name="XLXI_13" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2144" y1="3408" y2="3664" x1="2144" />
            <wire x2="2160" y1="3664" y2="3664" x1="2144" />
            <wire x2="2240" y1="3408" y2="3408" x1="2144" />
        </branch>
        <branch name="NIBBLE(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2952" y="3664" type="branch" />
            <wire x2="2560" y1="3408" y2="3408" x1="2464" />
            <wire x2="2560" y1="3408" y2="3664" x1="2560" />
            <wire x2="3344" y1="3664" y2="3664" x1="2560" />
            <wire x2="2560" y1="3664" y2="3664" x1="2544" />
        </branch>
        <instance x="2464" y="3440" name="XLXI_14" orien="M0" />
        <instance x="2160" y="3920" name="XLXI_15" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="2128" y1="4032" y2="4288" x1="2128" />
            <wire x2="2144" y1="4288" y2="4288" x1="2128" />
            <wire x2="2224" y1="4032" y2="4032" x1="2128" />
        </branch>
        <branch name="NIBBLE(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="4288" type="branch" />
            <wire x2="2544" y1="4032" y2="4032" x1="2448" />
            <wire x2="2544" y1="4032" y2="4288" x1="2544" />
            <wire x2="2944" y1="4288" y2="4288" x1="2544" />
            <wire x2="3344" y1="4288" y2="4288" x1="2944" />
            <wire x2="2544" y1="4288" y2="4288" x1="2528" />
        </branch>
        <instance x="2448" y="4064" name="XLXI_16" orien="M0" />
        <instance x="2144" y="4544" name="XLXI_17" orien="R0" />
        <branch name="SPLI(6:0)">
            <wire x2="960" y1="448" y2="768" x1="960" />
            <wire x2="960" y1="768" y2="1360" x1="960" />
            <wire x2="960" y1="1360" y2="1952" x1="960" />
            <wire x2="960" y1="1952" y2="2560" x1="960" />
            <wire x2="960" y1="2560" y2="3168" x1="960" />
            <wire x2="960" y1="3168" y2="3792" x1="960" />
            <wire x2="960" y1="3792" y2="4416" x1="960" />
            <wire x2="960" y1="4416" y2="4592" x1="960" />
        </branch>
        <bustap x2="1056" y1="4416" y2="4416" x1="960" />
        <branch name="SPLI(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="4416" type="branch" />
            <wire x2="1600" y1="4416" y2="4416" x1="1056" />
            <wire x2="2144" y1="4416" y2="4416" x1="1600" />
        </branch>
        <bustap x2="1056" y1="3792" y2="3792" x1="960" />
        <branch name="SPLI(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1608" y="3792" type="branch" />
            <wire x2="2160" y1="3792" y2="3792" x1="1056" />
        </branch>
        <bustap x2="1056" y1="3168" y2="3168" x1="960" />
        <branch name="SPLI(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="3168" type="branch" />
            <wire x2="1616" y1="3168" y2="3168" x1="1056" />
            <wire x2="2176" y1="3168" y2="3168" x1="1616" />
        </branch>
        <bustap x2="1056" y1="2560" y2="2560" x1="960" />
        <branch name="SPLI(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1624" y="2560" type="branch" />
            <wire x2="2192" y1="2560" y2="2560" x1="1056" />
        </branch>
        <bustap x2="1056" y1="1952" y2="1952" x1="960" />
        <branch name="SPLI(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1952" type="branch" />
            <wire x2="1632" y1="1952" y2="1952" x1="1056" />
            <wire x2="2208" y1="1952" y2="1952" x1="1632" />
        </branch>
        <bustap x2="1056" y1="1360" y2="1360" x1="960" />
        <branch name="SPLI(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1360" type="branch" />
            <wire x2="1632" y1="1360" y2="1360" x1="1056" />
            <wire x2="2208" y1="1360" y2="1360" x1="1632" />
        </branch>
        <bustap x2="1056" y1="768" y2="768" x1="960" />
        <branch name="SPLI(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1640" y="768" type="branch" />
            <wire x2="2224" y1="768" y2="768" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="960" y="448" name="SPLI(6:0)" orien="R180" />
        <branch name="NIBBLE(6:0)">
            <wire x2="3440" y1="560" y2="640" x1="3440" />
            <wire x2="3440" y1="640" y2="1232" x1="3440" />
            <wire x2="3440" y1="1232" y2="1824" x1="3440" />
            <wire x2="3440" y1="1824" y2="2432" x1="3440" />
            <wire x2="3440" y1="2432" y2="3040" x1="3440" />
            <wire x2="3440" y1="3040" y2="3664" x1="3440" />
            <wire x2="3440" y1="3664" y2="4288" x1="3440" />
            <wire x2="3440" y1="4288" y2="4528" x1="3440" />
        </branch>
        <iomarker fontsize="28" x="3440" y="560" name="NIBBLE(6:0)" orien="R0" />
        <bustap x2="3344" y1="4288" y2="4288" x1="3440" />
        <bustap x2="3344" y1="3664" y2="3664" x1="3440" />
        <bustap x2="3344" y1="3040" y2="3040" x1="3440" />
        <bustap x2="3344" y1="2432" y2="2432" x1="3440" />
        <bustap x2="3344" y1="1824" y2="1824" x1="3440" />
        <bustap x2="3344" y1="1232" y2="1232" x1="3440" />
        <bustap x2="3344" y1="640" y2="640" x1="3440" />
        <iomarker fontsize="28" x="1152" y="1024" name="CLR" orien="R180" />
        <branch name="CLR">
            <wire x2="1984" y1="1024" y2="1024" x1="1152" />
            <wire x2="2112" y1="992" y2="992" x1="1984" />
            <wire x2="2112" y1="992" y2="1456" x1="2112" />
            <wire x2="2112" y1="1456" y2="2048" x1="2112" />
            <wire x2="2112" y1="2048" y2="2656" x1="2112" />
            <wire x2="2112" y1="2656" y2="3264" x1="2112" />
            <wire x2="2112" y1="3264" y2="3888" x1="2112" />
            <wire x2="2112" y1="3888" y2="4512" x1="2112" />
            <wire x2="2144" y1="4512" y2="4512" x1="2112" />
            <wire x2="2160" y1="3888" y2="3888" x1="2112" />
            <wire x2="2176" y1="3264" y2="3264" x1="2112" />
            <wire x2="2192" y1="2656" y2="2656" x1="2112" />
            <wire x2="2208" y1="2048" y2="2048" x1="2112" />
            <wire x2="2208" y1="1456" y2="1456" x1="2112" />
            <wire x2="1984" y1="992" y2="1024" x1="1984" />
            <wire x2="2224" y1="864" y2="864" x1="2112" />
            <wire x2="2112" y1="864" y2="992" x1="2112" />
        </branch>
    </sheet>
</drawing>