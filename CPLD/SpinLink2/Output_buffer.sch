<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DAV_OUT" />
        <signal name="DATA_IN(8:0)" />
        <signal name="DATA_IN(8)" />
        <signal name="DATA_IN(7)" />
        <signal name="DATA_IN(6)" />
        <signal name="DATA_IN(5)" />
        <signal name="DATA_IN(4)" />
        <signal name="DATA_IN(3)" />
        <signal name="DATA_IN(2)" />
        <signal name="DATA_IN(1)" />
        <signal name="DATA_IN(0)" />
        <signal name="DATA_OUT(8:0)" />
        <signal name="DATA_OUT(8)" />
        <signal name="DATA_OUT(7)" />
        <signal name="DATA_OUT(6)" />
        <signal name="DATA_OUT(5)" />
        <signal name="DATA_OUT(4)" />
        <signal name="DATA_OUT(3)" />
        <signal name="DATA_OUT(2)" />
        <signal name="DATA_OUT(1)" />
        <signal name="DATA_OUT(0)" />
        <signal name="SEL_IN" />
        <signal name="XLXN_40" />
        <signal name="XLXN_37" />
        <signal name="DAV_IN" />
        <signal name="XLXN_53" />
        <port polarity="Output" name="DAV_OUT" />
        <port polarity="Input" name="DATA_IN(8:0)" />
        <port polarity="Output" name="DATA_OUT(8:0)" />
        <port polarity="Input" name="SEL_IN" />
        <port polarity="Input" name="DAV_IN" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="fd4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="XLXN_53" name="I" />
            <blockpin signalname="DAV_OUT" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_23">
            <blockpin signalname="XLXN_53" name="C" />
            <blockpin signalname="DATA_IN(8)" name="D" />
            <blockpin signalname="DATA_OUT(8)" name="Q" />
        </block>
        <block symbolname="fd4" name="XLXI_22">
            <blockpin signalname="XLXN_53" name="C" />
            <blockpin signalname="DATA_IN(4)" name="D0" />
            <blockpin signalname="DATA_IN(5)" name="D1" />
            <blockpin signalname="DATA_IN(6)" name="D2" />
            <blockpin signalname="DATA_IN(7)" name="D3" />
            <blockpin signalname="DATA_OUT(4)" name="Q0" />
            <blockpin signalname="DATA_OUT(5)" name="Q1" />
            <blockpin signalname="DATA_OUT(6)" name="Q2" />
            <blockpin signalname="DATA_OUT(7)" name="Q3" />
        </block>
        <block symbolname="fd4" name="XLXI_21">
            <blockpin signalname="XLXN_53" name="C" />
            <blockpin signalname="DATA_IN(0)" name="D0" />
            <blockpin signalname="DATA_IN(1)" name="D1" />
            <blockpin signalname="DATA_IN(2)" name="D2" />
            <blockpin signalname="DATA_IN(3)" name="D3" />
            <blockpin signalname="DATA_OUT(0)" name="Q0" />
            <blockpin signalname="DATA_OUT(1)" name="Q1" />
            <blockpin signalname="DATA_OUT(2)" name="Q2" />
            <blockpin signalname="DATA_OUT(3)" name="Q3" />
        </block>
        <block symbolname="buf" name="XLXI_27">
            <blockpin signalname="SEL_IN" name="I" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_28">
            <blockpin signalname="XLXN_40" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_26">
            <blockpin signalname="DAV_IN" name="I" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="DAV_OUT">
            <wire x2="2448" y1="1776" y2="1776" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1776" name="DAV_OUT" orien="R0" />
        <branch name="DATA_IN(8:0)">
            <wire x2="1136" y1="112" y2="112" x1="768" />
            <wire x2="1136" y1="112" y2="224" x1="1136" />
            <wire x2="1136" y1="224" y2="288" x1="1136" />
            <wire x2="1136" y1="288" y2="352" x1="1136" />
            <wire x2="1136" y1="352" y2="416" x1="1136" />
            <wire x2="1136" y1="416" y2="816" x1="1136" />
            <wire x2="1136" y1="816" y2="880" x1="1136" />
            <wire x2="1136" y1="880" y2="944" x1="1136" />
            <wire x2="1136" y1="944" y2="1008" x1="1136" />
            <wire x2="1136" y1="1008" y2="1472" x1="1136" />
        </branch>
        <instance x="1536" y="1728" name="XLXI_23" orien="R0" />
        <instance x="1552" y="1264" name="XLXI_22" orien="R0" />
        <instance x="1552" y="672" name="XLXI_21" orien="R0" />
        <iomarker fontsize="28" x="768" y="112" name="DATA_IN(8:0)" orien="R180" />
        <instance x="1504" y="1808" name="XLXI_24" orien="R0" />
        <bustap x2="1232" y1="1472" y2="1472" x1="1136" />
        <branch name="DATA_IN(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1384" y="1472" type="branch" />
            <wire x2="1536" y1="1472" y2="1472" x1="1232" />
        </branch>
        <bustap x2="1232" y1="1008" y2="1008" x1="1136" />
        <branch name="DATA_IN(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1008" type="branch" />
            <wire x2="1392" y1="1008" y2="1008" x1="1232" />
            <wire x2="1552" y1="1008" y2="1008" x1="1392" />
        </branch>
        <bustap x2="1232" y1="944" y2="944" x1="1136" />
        <branch name="DATA_IN(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="944" type="branch" />
            <wire x2="1392" y1="944" y2="944" x1="1232" />
            <wire x2="1552" y1="944" y2="944" x1="1392" />
        </branch>
        <bustap x2="1232" y1="880" y2="880" x1="1136" />
        <branch name="DATA_IN(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="880" type="branch" />
            <wire x2="1392" y1="880" y2="880" x1="1232" />
            <wire x2="1552" y1="880" y2="880" x1="1392" />
        </branch>
        <bustap x2="1232" y1="816" y2="816" x1="1136" />
        <branch name="DATA_IN(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="816" type="branch" />
            <wire x2="1392" y1="816" y2="816" x1="1232" />
            <wire x2="1552" y1="816" y2="816" x1="1392" />
        </branch>
        <bustap x2="1232" y1="416" y2="416" x1="1136" />
        <branch name="DATA_IN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="416" type="branch" />
            <wire x2="1392" y1="416" y2="416" x1="1232" />
            <wire x2="1552" y1="416" y2="416" x1="1392" />
        </branch>
        <bustap x2="1232" y1="352" y2="352" x1="1136" />
        <branch name="DATA_IN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="352" type="branch" />
            <wire x2="1392" y1="352" y2="352" x1="1232" />
            <wire x2="1552" y1="352" y2="352" x1="1392" />
        </branch>
        <bustap x2="1232" y1="288" y2="288" x1="1136" />
        <branch name="DATA_IN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="288" type="branch" />
            <wire x2="1392" y1="288" y2="288" x1="1232" />
            <wire x2="1552" y1="288" y2="288" x1="1392" />
        </branch>
        <bustap x2="1232" y1="224" y2="224" x1="1136" />
        <branch name="DATA_IN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="224" type="branch" />
            <wire x2="1392" y1="224" y2="224" x1="1232" />
            <wire x2="1552" y1="224" y2="224" x1="1392" />
        </branch>
        <branch name="DATA_OUT(8:0)">
            <wire x2="2400" y1="112" y2="224" x1="2400" />
            <wire x2="2400" y1="224" y2="288" x1="2400" />
            <wire x2="2400" y1="288" y2="352" x1="2400" />
            <wire x2="2400" y1="352" y2="416" x1="2400" />
            <wire x2="2400" y1="416" y2="816" x1="2400" />
            <wire x2="2400" y1="816" y2="880" x1="2400" />
            <wire x2="2400" y1="880" y2="944" x1="2400" />
            <wire x2="2400" y1="944" y2="1008" x1="2400" />
            <wire x2="2400" y1="1008" y2="1472" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2400" y="112" name="DATA_OUT(8:0)" orien="R0" />
        <bustap x2="2304" y1="1472" y2="1472" x1="2400" />
        <branch name="DATA_OUT(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1472" type="branch" />
            <wire x2="2112" y1="1472" y2="1472" x1="1920" />
            <wire x2="2304" y1="1472" y2="1472" x1="2112" />
        </branch>
        <bustap x2="2304" y1="1008" y2="1008" x1="2400" />
        <branch name="DATA_OUT(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="1008" type="branch" />
            <wire x2="2304" y1="1008" y2="1008" x1="1936" />
        </branch>
        <bustap x2="2304" y1="944" y2="944" x1="2400" />
        <branch name="DATA_OUT(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="944" type="branch" />
            <wire x2="2304" y1="944" y2="944" x1="1936" />
        </branch>
        <bustap x2="2304" y1="880" y2="880" x1="2400" />
        <branch name="DATA_OUT(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="880" type="branch" />
            <wire x2="2304" y1="880" y2="880" x1="1936" />
        </branch>
        <bustap x2="2304" y1="816" y2="816" x1="2400" />
        <branch name="DATA_OUT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="816" type="branch" />
            <wire x2="2304" y1="816" y2="816" x1="1936" />
        </branch>
        <bustap x2="2304" y1="416" y2="416" x1="2400" />
        <branch name="DATA_OUT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="416" type="branch" />
            <wire x2="2304" y1="416" y2="416" x1="1936" />
        </branch>
        <bustap x2="2304" y1="352" y2="352" x1="2400" />
        <branch name="DATA_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="352" type="branch" />
            <wire x2="2304" y1="352" y2="352" x1="1936" />
        </branch>
        <bustap x2="2304" y1="288" y2="288" x1="2400" />
        <branch name="DATA_OUT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="288" type="branch" />
            <wire x2="2304" y1="288" y2="288" x1="1936" />
        </branch>
        <bustap x2="2304" y1="224" y2="224" x1="2400" />
        <branch name="DATA_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2120" y="224" type="branch" />
            <wire x2="2304" y1="224" y2="224" x1="1936" />
        </branch>
        <branch name="SEL_IN">
            <wire x2="528" y1="544" y2="544" x1="448" />
        </branch>
        <instance x="528" y="576" name="XLXI_27" orien="R0" />
        <instance x="816" y="576" name="XLXI_28" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="816" y1="544" y2="544" x1="752" />
        </branch>
        <iomarker fontsize="28" x="448" y="544" name="SEL_IN" orien="R180" />
        <branch name="DAV_IN">
            <wire x2="512" y1="1136" y2="1136" x1="432" />
            <wire x2="528" y1="1136" y2="1136" x1="512" />
        </branch>
        <instance x="832" y="1168" name="XLXI_25" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="832" y1="1136" y2="1136" x1="752" />
        </branch>
        <instance x="528" y="1168" name="XLXI_26" orien="R0" />
        <iomarker fontsize="28" x="432" y="1136" name="DAV_IN" orien="R180" />
        <branch name="XLXN_53">
            <wire x2="1296" y1="1136" y2="1136" x1="1056" />
            <wire x2="1552" y1="1136" y2="1136" x1="1296" />
            <wire x2="1296" y1="1136" y2="1600" x1="1296" />
            <wire x2="1536" y1="1600" y2="1600" x1="1296" />
            <wire x2="1296" y1="1600" y2="1776" x1="1296" />
            <wire x2="1504" y1="1776" y2="1776" x1="1296" />
            <wire x2="1552" y1="544" y2="544" x1="1296" />
            <wire x2="1296" y1="544" y2="1136" x1="1296" />
        </branch>
    </sheet>
</drawing>