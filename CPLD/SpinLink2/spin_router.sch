<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SPL_IN(6:0)" />
        <signal name="SPL_OUT(6:0)" />
        <signal name="SPL_IN(6)" />
        <signal name="SPL_IN(5)" />
        <signal name="SPL_IN(4)" />
        <signal name="SPL_IN(3)" />
        <signal name="SPL_IN(2)" />
        <signal name="SPL_IN(1)" />
        <signal name="SPL_IN(0)" />
        <signal name="SPL_OUT(6)" />
        <signal name="SPL_OUT(5)" />
        <signal name="SPL_OUT(4)" />
        <signal name="SPL_OUT(3)" />
        <signal name="SPL_OUT(2)" />
        <signal name="SPL_OUT(1)" />
        <signal name="SPL_OUT(0)" />
        <signal name="ACK_O" />
        <signal name="ACK_I" />
        <port polarity="Input" name="SPL_IN(6:0)" />
        <port polarity="Output" name="SPL_OUT(6:0)" />
        <port polarity="Output" name="ACK_O" />
        <port polarity="Input" name="ACK_I" />
        <blockdef name="buf4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="128" y1="-224" y2="-224" x1="224" />
            <line x2="128" y1="-160" y2="-160" x1="224" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="128" y1="-96" y2="-96" x1="224" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="buf4" name="XLXI_1">
            <blockpin signalname="SPL_IN(0)" name="I0" />
            <blockpin signalname="SPL_IN(1)" name="I1" />
            <blockpin signalname="SPL_IN(2)" name="I2" />
            <blockpin signalname="SPL_IN(3)" name="I3" />
            <blockpin signalname="SPL_OUT(0)" name="O0" />
            <blockpin signalname="SPL_OUT(1)" name="O1" />
            <blockpin signalname="SPL_OUT(2)" name="O2" />
            <blockpin signalname="SPL_OUT(3)" name="O3" />
        </block>
        <block symbolname="buf4" name="XLXI_2">
            <blockpin signalname="SPL_IN(4)" name="I0" />
            <blockpin signalname="SPL_IN(5)" name="I1" />
            <blockpin signalname="SPL_IN(6)" name="I2" />
            <blockpin signalname="ACK_I" name="I3" />
            <blockpin signalname="SPL_OUT(4)" name="O0" />
            <blockpin signalname="SPL_OUT(5)" name="O1" />
            <blockpin signalname="SPL_OUT(6)" name="O2" />
            <blockpin signalname="ACK_O" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SPL_IN(6:0)">
            <wire x2="848" y1="736" y2="736" x1="464" />
            <wire x2="848" y1="736" y2="960" x1="848" />
            <wire x2="848" y1="960" y2="1024" x1="848" />
            <wire x2="848" y1="1024" y2="1088" x1="848" />
            <wire x2="848" y1="1088" y2="1152" x1="848" />
            <wire x2="848" y1="1152" y2="1424" x1="848" />
            <wire x2="848" y1="1424" y2="1488" x1="848" />
            <wire x2="848" y1="1488" y2="1552" x1="848" />
        </branch>
        <branch name="SPL_OUT(6:0)">
            <wire x2="2960" y1="736" y2="736" x1="2944" />
            <wire x2="2960" y1="736" y2="960" x1="2960" />
            <wire x2="2960" y1="960" y2="1024" x1="2960" />
            <wire x2="2960" y1="1024" y2="1088" x1="2960" />
            <wire x2="2960" y1="1088" y2="1152" x1="2960" />
            <wire x2="2960" y1="1152" y2="1424" x1="2960" />
            <wire x2="2960" y1="1424" y2="1488" x1="2960" />
            <wire x2="2960" y1="1488" y2="1552" x1="2960" />
            <wire x2="2960" y1="1552" y2="1616" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2944" y="736" name="SPL_OUT(6:0)" orien="R180" />
        <instance x="1712" y="1184" name="XLXI_1" orien="R0" />
        <instance x="1712" y="1648" name="XLXI_2" orien="R0" />
        <bustap x2="944" y1="1552" y2="1552" x1="848" />
        <branch name="SPL_IN(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1552" type="branch" />
            <wire x2="1328" y1="1552" y2="1552" x1="944" />
            <wire x2="1712" y1="1552" y2="1552" x1="1328" />
        </branch>
        <bustap x2="944" y1="1488" y2="1488" x1="848" />
        <branch name="SPL_IN(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1488" type="branch" />
            <wire x2="1328" y1="1488" y2="1488" x1="944" />
            <wire x2="1712" y1="1488" y2="1488" x1="1328" />
        </branch>
        <bustap x2="944" y1="1424" y2="1424" x1="848" />
        <branch name="SPL_IN(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1424" type="branch" />
            <wire x2="1328" y1="1424" y2="1424" x1="944" />
            <wire x2="1712" y1="1424" y2="1424" x1="1328" />
        </branch>
        <bustap x2="944" y1="1152" y2="1152" x1="848" />
        <branch name="SPL_IN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1152" type="branch" />
            <wire x2="1328" y1="1152" y2="1152" x1="944" />
            <wire x2="1712" y1="1152" y2="1152" x1="1328" />
        </branch>
        <bustap x2="944" y1="1088" y2="1088" x1="848" />
        <branch name="SPL_IN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1088" type="branch" />
            <wire x2="1328" y1="1088" y2="1088" x1="944" />
            <wire x2="1712" y1="1088" y2="1088" x1="1328" />
        </branch>
        <bustap x2="944" y1="1024" y2="1024" x1="848" />
        <branch name="SPL_IN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1024" type="branch" />
            <wire x2="1328" y1="1024" y2="1024" x1="944" />
            <wire x2="1712" y1="1024" y2="1024" x1="1328" />
        </branch>
        <bustap x2="944" y1="960" y2="960" x1="848" />
        <branch name="SPL_IN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="960" type="branch" />
            <wire x2="1328" y1="960" y2="960" x1="944" />
            <wire x2="1712" y1="960" y2="960" x1="1328" />
        </branch>
        <bustap x2="2864" y1="1552" y2="1552" x1="2960" />
        <branch name="SPL_OUT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1552" type="branch" />
            <wire x2="2400" y1="1552" y2="1552" x1="1936" />
            <wire x2="2864" y1="1552" y2="1552" x1="2400" />
        </branch>
        <bustap x2="2864" y1="1488" y2="1488" x1="2960" />
        <branch name="SPL_OUT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1488" type="branch" />
            <wire x2="2400" y1="1488" y2="1488" x1="1936" />
            <wire x2="2864" y1="1488" y2="1488" x1="2400" />
        </branch>
        <bustap x2="2864" y1="1424" y2="1424" x1="2960" />
        <branch name="SPL_OUT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1424" type="branch" />
            <wire x2="2400" y1="1424" y2="1424" x1="1936" />
            <wire x2="2864" y1="1424" y2="1424" x1="2400" />
        </branch>
        <bustap x2="2864" y1="1152" y2="1152" x1="2960" />
        <branch name="SPL_OUT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1152" type="branch" />
            <wire x2="2400" y1="1152" y2="1152" x1="1936" />
            <wire x2="2864" y1="1152" y2="1152" x1="2400" />
        </branch>
        <bustap x2="2864" y1="1088" y2="1088" x1="2960" />
        <branch name="SPL_OUT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1088" type="branch" />
            <wire x2="2400" y1="1088" y2="1088" x1="1936" />
            <wire x2="2864" y1="1088" y2="1088" x1="2400" />
        </branch>
        <bustap x2="2864" y1="1024" y2="1024" x1="2960" />
        <branch name="SPL_OUT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="1024" type="branch" />
            <wire x2="2400" y1="1024" y2="1024" x1="1936" />
            <wire x2="2864" y1="1024" y2="1024" x1="2400" />
        </branch>
        <bustap x2="2864" y1="960" y2="960" x1="2960" />
        <branch name="SPL_OUT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2400" y="960" type="branch" />
            <wire x2="2400" y1="960" y2="960" x1="1936" />
            <wire x2="2864" y1="960" y2="960" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="464" y="736" name="SPL_IN(6:0)" orien="R180" />
        <branch name="ACK_O">
            <wire x2="1952" y1="1616" y2="1616" x1="1936" />
            <wire x2="1952" y1="1616" y2="1984" x1="1952" />
            <wire x2="3248" y1="1984" y2="1984" x1="1952" />
            <wire x2="3248" y1="1984" y2="2352" x1="3248" />
        </branch>
        <branch name="ACK_I">
            <wire x2="1696" y1="1616" y2="1616" x1="1360" />
            <wire x2="1712" y1="1616" y2="1616" x1="1696" />
            <wire x2="1360" y1="1616" y2="2304" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="3248" y="2352" name="ACK_O" orien="R90" />
        <iomarker fontsize="28" x="1360" y="2304" name="ACK_I" orien="R90" />
    </sheet>
</drawing>