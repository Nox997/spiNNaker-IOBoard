<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Q" />
        <signal name="CLK" />
        <signal name="CLR" />
        <port polarity="Output" name="Q" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CLR" />
        <blockdef name="fdc">
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fdc" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="Q" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="Q" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="400" y="608" name="XLXI_1" orien="R0" />
        <instance x="704" y="128" name="XLXI_2" orien="M0" />
        <branch name="XLXN_1">
            <wire x2="384" y1="96" y2="352" x1="384" />
            <wire x2="400" y1="352" y2="352" x1="384" />
            <wire x2="480" y1="96" y2="96" x1="384" />
        </branch>
        <branch name="Q">
            <wire x2="800" y1="96" y2="96" x1="704" />
            <wire x2="800" y1="96" y2="352" x1="800" />
            <wire x2="1008" y1="352" y2="352" x1="800" />
            <wire x2="800" y1="352" y2="352" x1="784" />
        </branch>
        <branch name="CLK">
            <wire x2="400" y1="480" y2="480" x1="240" />
        </branch>
        <branch name="CLR">
            <wire x2="384" y1="576" y2="576" x1="240" />
            <wire x2="400" y1="576" y2="576" x1="384" />
        </branch>
        <iomarker fontsize="28" x="240" y="480" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1008" y="352" name="Q" orien="R0" />
        <iomarker fontsize="28" x="240" y="576" name="CLR" orien="R180" />
    </sheet>
</drawing>