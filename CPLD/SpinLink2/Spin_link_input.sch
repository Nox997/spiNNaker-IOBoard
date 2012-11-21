<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SPIN_LINK_IN(6:0)" />
        <signal name="SPIN_LINK_IN_ACK" />
        <signal name="DATA_OUT_AV" />
        <signal name="XLXN_282" />
        <signal name="DATA_OUT(8:0)" />
        <signal name="DATA_O_ACK" />
        <port polarity="Input" name="SPIN_LINK_IN(6:0)" />
        <port polarity="Output" name="SPIN_LINK_IN_ACK" />
        <port polarity="Output" name="DATA_OUT_AV" />
        <port polarity="Output" name="DATA_OUT(8:0)" />
        <port polarity="Input" name="DATA_O_ACK" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Auto_Reply">
            <timestamp>2012-8-30T15:3:43</timestamp>
            <line x2="384" y1="992" y2="992" x1="320" />
            <line x2="0" y1="800" y2="800" x1="64" />
            <rect width="64" x="320" y="404" height="24" />
            <line x2="384" y1="416" y2="416" x1="320" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="56" y="-252" height="1328" />
        </blockdef>
        <block symbolname="Auto_Reply" name="XLXI_83">
            <blockpin signalname="DATA_O_ACK" name="DACK" />
            <blockpin signalname="SPIN_LINK_IN(6:0)" name="NIBBLE_IN(6:0)" />
            <blockpin signalname="SPIN_LINK_IN_ACK" name="ACK" />
            <blockpin signalname="XLXN_282" name="DAV" />
            <blockpin name="NIBBLE_CLEAR" />
            <blockpin name="DACK_CLEAR" />
            <blockpin signalname="DATA_OUT(8:0)" name="DATA_OUT(8:0)" />
        </block>
        <block symbolname="buf" name="XLXI_45">
            <blockpin signalname="XLXN_282" name="I" />
            <blockpin signalname="DATA_OUT_AV" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="SPIN_LINK_IN(6:0)">
            <wire x2="784" y1="1616" y2="1616" x1="512" />
            <wire x2="1440" y1="1616" y2="1616" x1="784" />
        </branch>
        <iomarker fontsize="28" x="512" y="1616" name="SPIN_LINK_IN(6:0)" orien="R180" />
        <branch name="SPIN_LINK_IN_ACK">
            <wire x2="2400" y1="1552" y2="1552" x1="1824" />
        </branch>
        <branch name="DATA_OUT_AV">
            <wire x2="2400" y1="1744" y2="1744" x1="2224" />
        </branch>
        <branch name="XLXN_282">
            <wire x2="2000" y1="1744" y2="1744" x1="1824" />
        </branch>
        <instance x="1440" y="1648" name="XLXI_83" orien="R0">
        </instance>
        <instance x="2000" y="1776" name="XLXI_45" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1744" name="DATA_OUT_AV" orien="R0" />
        <branch name="DATA_OUT(8:0)">
            <wire x2="2416" y1="2064" y2="2064" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1552" name="SPIN_LINK_IN_ACK" orien="R0" />
        <iomarker fontsize="28" x="2416" y="2064" name="DATA_OUT(8:0)" orien="R0" />
        <branch name="DATA_O_ACK">
            <wire x2="736" y1="2368" y2="2368" x1="320" />
            <wire x2="752" y1="2368" y2="2368" x1="736" />
            <wire x2="1440" y1="1872" y2="1872" x1="752" />
            <wire x2="752" y1="1872" y2="2368" x1="752" />
        </branch>
        <iomarker fontsize="28" x="320" y="2368" name="DATA_O_ACK" orien="R180" />
    </sheet>
</drawing>