<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="SEL" />
        <signal name="CLR" />
        <signal name="OK" />
        <signal name="XLXN_11" />
        <signal name="DAV" />
        <signal name="XLXN_23" />
        <signal name="EOP" />
        <signal name="XLXN_35" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_45" />
        <port polarity="Output" name="SEL" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="OK" />
        <port polarity="Output" name="DAV" />
        <port polarity="Input" name="EOP" />
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="ftc" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_45" name="T" />
            <blockpin signalname="SEL" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="SEL" name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="SEL" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_9">
            <blockpin signalname="XLXN_11" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_43" name="T" />
            <blockpin signalname="XLXN_35" name="Q" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="EOP" name="I1" />
            <blockpin signalname="DAV" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_13">
            <blockpin signalname="DAV" name="I0" />
            <blockpin signalname="OK" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="XLXN_42" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="XLXN_41" name="I" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_5">
            <wire x2="1200" y1="1104" y2="1104" x1="928" />
        </branch>
        <branch name="CLR">
            <wire x2="1008" y1="1200" y2="1200" x1="928" />
            <wire x2="1008" y1="1200" y2="1280" x1="1008" />
            <wire x2="2336" y1="1280" y2="1280" x1="1008" />
            <wire x2="1200" y1="1200" y2="1200" x1="1008" />
            <wire x2="2336" y1="1200" y2="1280" x1="2336" />
        </branch>
        <branch name="SEL">
            <wire x2="1600" y1="976" y2="976" x1="1584" />
            <wire x2="1728" y1="976" y2="976" x1="1600" />
            <wire x2="1600" y1="976" y2="1104" x1="1600" />
            <wire x2="1904" y1="1104" y2="1104" x1="1600" />
            <wire x2="1824" y1="608" y2="608" x1="1600" />
            <wire x2="1600" y1="608" y2="976" x1="1600" />
        </branch>
        <instance x="704" y="1136" name="XLXI_4" orien="R0" />
        <instance x="1200" y="1232" name="XLXI_1" orien="R0" />
        <iomarker fontsize="28" x="1824" y="608" name="SEL" orien="R0" />
        <instance x="1728" y="1008" name="XLXI_7" orien="R0" />
        <instance x="2336" y="1232" name="XLXI_9" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="2336" y1="1104" y2="1104" x1="2128" />
        </branch>
        <instance x="1904" y="1136" name="XLXI_6" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="688" y1="976" y2="976" x1="672" />
            <wire x2="688" y1="976" y2="1104" x1="688" />
            <wire x2="704" y1="1104" y2="1104" x1="688" />
            <wire x2="704" y1="976" y2="976" x1="688" />
        </branch>
        <branch name="EOP">
            <wire x2="2736" y1="608" y2="608" x1="2320" />
            <wire x2="2736" y1="608" y2="912" x1="2736" />
            <wire x2="2752" y1="912" y2="912" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="3120" y="976" name="DAV" orien="R0" />
        <instance x="2752" y="1040" name="XLXI_12" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="2752" y1="976" y2="976" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2320" y="608" name="EOP" orien="R180" />
        <iomarker fontsize="28" x="192" y="912" name="OK" orien="R180" />
        <branch name="OK">
            <wire x2="208" y1="912" y2="912" x1="192" />
            <wire x2="208" y1="912" y2="944" x1="208" />
            <wire x2="416" y1="944" y2="944" x1="208" />
        </branch>
        <branch name="DAV">
            <wire x2="416" y1="1008" y2="1008" x1="336" />
            <wire x2="336" y1="1008" y2="1536" x1="336" />
            <wire x2="3024" y1="1536" y2="1536" x1="336" />
            <wire x2="3024" y1="944" y2="944" x1="3008" />
            <wire x2="3024" y1="944" y2="976" x1="3024" />
            <wire x2="3120" y1="976" y2="976" x1="3024" />
            <wire x2="3024" y1="976" y2="1536" x1="3024" />
        </branch>
        <iomarker fontsize="28" x="928" y="1200" name="CLR" orien="R180" />
        <instance x="416" y="1072" name="XLXI_13" orien="R0" />
        <instance x="2032" y="1008" name="XLXI_14" orien="R0" />
        <instance x="704" y="1008" name="XLXI_3" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="2032" y1="976" y2="976" x1="1952" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="2336" y1="976" y2="976" x1="2256" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="944" y1="976" y2="976" x1="928" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1200" y1="976" y2="976" x1="1168" />
        </branch>
        <instance x="944" y="1008" name="XLXI_15" orien="R0" />
    </sheet>
</drawing>