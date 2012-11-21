<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DATA_OUT(8:0)" />
        <signal name="DATA_OUT_AV" />
        <signal name="SPIN_LINK_OUT_ACK" />
        <signal name="DATA_O_ACK" />
        <signal name="SPIN_LINK_OUT(6:0)" />
        <signal name="DATA_IN_BSY" />
        <signal name="DATA_IN_AV" />
        <signal name="DATA_IN(8:0)" />
        <signal name="SPIN_LINK_IN(6:0)" />
        <signal name="SPIN_LINK_IN_ACK" />
        <port polarity="Output" name="DATA_OUT(8:0)" />
        <port polarity="Output" name="DATA_OUT_AV" />
        <port polarity="Output" name="SPIN_LINK_OUT_ACK" />
        <port polarity="Input" name="DATA_O_ACK" />
        <port polarity="Input" name="SPIN_LINK_OUT(6:0)" />
        <port polarity="Output" name="DATA_IN_BSY" />
        <port polarity="Input" name="DATA_IN_AV" />
        <port polarity="Input" name="DATA_IN(8:0)" />
        <port polarity="Output" name="SPIN_LINK_IN(6:0)" />
        <port polarity="Input" name="SPIN_LINK_IN_ACK" />
        <blockdef name="Output3">
            <timestamp>2012-9-5T16:54:5</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Input2">
            <timestamp>2012-9-7T16:19:21</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="Output3" name="XLXI_20">
            <blockpin signalname="SPIN_LINK_IN_ACK" name="ACK" />
            <blockpin signalname="DATA_IN_AV" name="DAV" />
            <blockpin signalname="DATA_IN(8:0)" name="DATA_IN(8:0)" />
            <blockpin signalname="DATA_IN_BSY" name="BSY" />
            <blockpin signalname="SPIN_LINK_IN(6:0)" name="SPLO(6:0)" />
        </block>
        <block symbolname="Input2" name="XLXI_21">
            <blockpin signalname="DATA_O_ACK" name="DACK" />
            <blockpin signalname="SPIN_LINK_OUT(6:0)" name="SPLI(6:0)" />
            <blockpin signalname="DATA_OUT_AV" name="DAV" />
            <blockpin signalname="SPIN_LINK_OUT_ACK" name="ACK" />
            <blockpin signalname="DATA_OUT(8:0)" name="DATA_OUT(8:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DATA_OUT_AV">
            <wire x2="2096" y1="304" y2="304" x1="1392" />
        </branch>
        <branch name="DATA_OUT(8:0)">
            <wire x2="2096" y1="432" y2="432" x1="1392" />
        </branch>
        <branch name="SPIN_LINK_OUT_ACK">
            <wire x2="2096" y1="368" y2="368" x1="1392" />
        </branch>
        <branch name="DATA_O_ACK">
            <wire x2="976" y1="304" y2="304" x1="464" />
        </branch>
        <branch name="SPIN_LINK_OUT(6:0)">
            <wire x2="976" y1="432" y2="432" x1="528" />
        </branch>
        <iomarker fontsize="28" x="464" y="304" name="DATA_O_ACK" orien="R180" />
        <branch name="DATA_IN_BSY">
            <wire x2="1968" y1="1056" y2="1056" x1="1536" />
        </branch>
        <branch name="DATA_IN(8:0)">
            <wire x2="1152" y1="1184" y2="1184" x1="432" />
        </branch>
        <branch name="SPIN_LINK_IN_ACK">
            <wire x2="1152" y1="1056" y2="1056" x1="496" />
        </branch>
        <instance x="1152" y="1216" name="XLXI_20" orien="R0">
        </instance>
        <iomarker fontsize="28" x="448" y="1120" name="DATA_IN_AV" orien="R180" />
        <iomarker fontsize="28" x="496" y="1056" name="SPIN_LINK_IN_ACK" orien="R180" />
        <iomarker fontsize="28" x="432" y="1184" name="DATA_IN(8:0)" orien="R180" />
        <iomarker fontsize="28" x="1968" y="1056" name="DATA_IN_BSY" orien="R0" />
        <iomarker fontsize="28" x="528" y="432" name="SPIN_LINK_OUT(6:0)" orien="R180" />
        <branch name="SPIN_LINK_IN(6:0)">
            <wire x2="1984" y1="1184" y2="1184" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1984" y="1184" name="SPIN_LINK_IN(6:0)" orien="R0" />
        <branch name="DATA_IN_AV">
            <wire x2="960" y1="1120" y2="1120" x1="448" />
            <wire x2="1152" y1="1120" y2="1120" x1="960" />
        </branch>
        <iomarker fontsize="28" x="2096" y="432" name="DATA_OUT(8:0)" orien="R0" />
        <iomarker fontsize="28" x="2096" y="304" name="DATA_OUT_AV" orien="R0" />
        <iomarker fontsize="28" x="2096" y="368" name="SPIN_LINK_OUT_ACK" orien="R0" />
        <instance x="976" y="464" name="XLXI_21" orien="R0">
        </instance>
    </sheet>
</drawing>