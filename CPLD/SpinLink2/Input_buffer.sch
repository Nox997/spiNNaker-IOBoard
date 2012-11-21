<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SPIN_LINK_O(6:0)" />
        <signal name="XLXN_6" />
        <signal name="SPIN_LINK_O(0)" />
        <signal name="XLXN_9" />
        <signal name="SPIN_LINK_O(1)" />
        <signal name="SPIN_LINK_O(6)" />
        <signal name="SPIN_LINK_O(5)" />
        <signal name="SPIN_LINK_O(4)" />
        <signal name="SPIN_LINK_O(3)" />
        <signal name="SPIN_LINK_O(2)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_28" />
        <signal name="LOAD" />
        <signal name="NIBBLE_OUT(6:0)" />
        <signal name="NIBBLE_OUT(6)" />
        <signal name="NIBBLE_OUT(5)" />
        <signal name="NIBBLE_OUT(4)" />
        <signal name="NIBBLE_OUT(3)" />
        <signal name="NIBBLE_OUT(2)" />
        <signal name="NIBBLE_OUT(1)" />
        <signal name="NIBBLE_OUT(0)" />
        <signal name="XLXN_29" />
        <signal name="DACK_CLR" />
        <signal name="DACK" />
        <signal name="DACK_OUT" />
        <signal name="NIBBLE_OR" />
        <signal name="NIBBLE_XOR" />
        <signal name="OK" />
        <port polarity="Input" name="SPIN_LINK_O(6:0)" />
        <port polarity="Input" name="LOAD" />
        <port polarity="Output" name="NIBBLE_OUT(6:0)" />
        <port polarity="Input" name="DACK_CLR" />
        <port polarity="Input" name="DACK" />
        <port polarity="Output" name="DACK_OUT" />
        <port polarity="Output" name="NIBBLE_OR" />
        <port polarity="Output" name="NIBBLE_XOR" />
        <port polarity="Output" name="OK" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
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
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
        </blockdef>
        <blockdef name="xor7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-304" y2="-304" x1="128" />
            <arc ex="64" ey="-304" sx="64" sy="-208" r="56" cx="32" cy="-256" />
            <arc ex="128" ey="-304" sx="208" sy="-256" r="88" cx="132" cy="-216" />
            <line x2="64" y1="-208" y2="-208" x1="128" />
            <line x2="208" y1="-256" y2="-256" x1="256" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
            <arc ex="208" ey="-256" sx="128" sy="-208" r="88" cx="132" cy="-296" />
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
        <block symbolname="xor2" name="XLXI_20">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="SPIN_LINK_O(0)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(0)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_27">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="SPIN_LINK_O(1)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(1)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_28">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="SPIN_LINK_O(2)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(2)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_29">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="SPIN_LINK_O(3)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(3)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_30">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="SPIN_LINK_O(4)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(4)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_31">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="SPIN_LINK_O(5)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(5)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_32">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="SPIN_LINK_O(6)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(6)" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_64">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(0)" name="D" />
            <blockpin signalname="XLXN_6" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_66">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(2)" name="D" />
            <blockpin signalname="XLXN_23" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_67">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(3)" name="D" />
            <blockpin signalname="XLXN_24" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_68">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(4)" name="D" />
            <blockpin signalname="XLXN_25" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_69">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(5)" name="D" />
            <blockpin signalname="XLXN_26" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_70">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(6)" name="D" />
            <blockpin signalname="XLXN_28" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_71">
            <blockpin signalname="LOAD" name="C" />
            <blockpin signalname="SPIN_LINK_O(1)" name="D" />
            <blockpin signalname="XLXN_9" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_55">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="DACK" name="I1" />
            <blockpin signalname="DACK_OUT" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_72">
            <blockpin signalname="DACK_CLR" name="C" />
            <blockpin signalname="DACK" name="D" />
            <blockpin signalname="XLXN_29" name="Q" />
        </block>
        <block symbolname="or7" name="XLXI_77">
            <blockpin signalname="NIBBLE_OUT(6)" name="I0" />
            <blockpin signalname="NIBBLE_OUT(5)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(4)" name="I2" />
            <blockpin signalname="NIBBLE_OUT(3)" name="I3" />
            <blockpin signalname="NIBBLE_OUT(2)" name="I4" />
            <blockpin signalname="NIBBLE_OUT(1)" name="I5" />
            <blockpin signalname="NIBBLE_OUT(0)" name="I6" />
            <blockpin signalname="NIBBLE_OR" name="O" />
        </block>
        <block symbolname="xor7" name="XLXI_78">
            <blockpin signalname="NIBBLE_OUT(6)" name="I0" />
            <blockpin signalname="NIBBLE_OUT(5)" name="I1" />
            <blockpin signalname="NIBBLE_OUT(4)" name="I2" />
            <blockpin signalname="NIBBLE_OUT(3)" name="I3" />
            <blockpin signalname="NIBBLE_OUT(2)" name="I4" />
            <blockpin signalname="NIBBLE_OUT(1)" name="I5" />
            <blockpin signalname="NIBBLE_OUT(0)" name="I6" />
            <blockpin signalname="NIBBLE_XOR" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_80">
            <blockpin signalname="NIBBLE_XOR" name="I0" />
            <blockpin signalname="NIBBLE_OR" name="I1" />
            <blockpin signalname="OK" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SPIN_LINK_O(6:0)">
            <wire x2="688" y1="96" y2="96" x1="624" />
            <wire x2="688" y1="96" y2="112" x1="688" />
            <wire x2="688" y1="112" y2="320" x1="688" />
            <wire x2="688" y1="320" y2="704" x1="688" />
            <wire x2="688" y1="704" y2="928" x1="688" />
            <wire x2="688" y1="928" y2="1280" x1="688" />
            <wire x2="688" y1="1280" y2="1520" x1="688" />
            <wire x2="688" y1="1520" y2="1872" x1="688" />
            <wire x2="688" y1="1872" y2="2080" x1="688" />
            <wire x2="688" y1="2080" y2="2384" x1="688" />
            <wire x2="688" y1="2384" y2="2576" x1="688" />
            <wire x2="688" y1="2576" y2="2880" x1="688" />
            <wire x2="688" y1="2880" y2="3040" x1="688" />
            <wire x2="688" y1="3040" y2="3344" x1="688" />
            <wire x2="688" y1="3344" y2="3520" x1="688" />
        </branch>
        <instance x="1552" y="240" name="XLXI_20" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1456" y1="320" y2="320" x1="1376" />
            <wire x2="1456" y1="176" y2="320" x1="1456" />
            <wire x2="1552" y1="176" y2="176" x1="1456" />
        </branch>
        <bustap x2="784" y1="320" y2="320" x1="688" />
        <branch name="SPIN_LINK_O(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="320" type="branch" />
            <wire x2="864" y1="320" y2="320" x1="784" />
            <wire x2="992" y1="320" y2="320" x1="864" />
        </branch>
        <bustap x2="784" y1="112" y2="112" x1="688" />
        <branch name="SPIN_LINK_O(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1163" y="105" type="branch" />
            <wire x2="1552" y1="112" y2="112" x1="784" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1456" y1="928" y2="928" x1="1360" />
            <wire x2="1456" y1="768" y2="928" x1="1456" />
            <wire x2="1552" y1="768" y2="768" x1="1456" />
        </branch>
        <bustap x2="784" y1="704" y2="704" x1="688" />
        <branch name="SPIN_LINK_O(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1163" y="697" type="branch" />
            <wire x2="1552" y1="704" y2="704" x1="784" />
        </branch>
        <bustap x2="784" y1="3520" y2="3520" x1="688" />
        <branch name="SPIN_LINK_O(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="835" y="3513" type="branch" />
            <wire x2="896" y1="3520" y2="3520" x1="784" />
        </branch>
        <bustap x2="784" y1="3040" y2="3040" x1="688" />
        <branch name="SPIN_LINK_O(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="843" y="3033" type="branch" />
            <wire x2="912" y1="3040" y2="3040" x1="784" />
        </branch>
        <bustap x2="784" y1="2576" y2="2576" x1="688" />
        <branch name="SPIN_LINK_O(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="851" y="2569" type="branch" />
            <wire x2="928" y1="2576" y2="2576" x1="784" />
        </branch>
        <bustap x2="784" y1="2080" y2="2080" x1="688" />
        <branch name="SPIN_LINK_O(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="851" y="2073" type="branch" />
            <wire x2="928" y1="2080" y2="2080" x1="784" />
        </branch>
        <bustap x2="784" y1="1520" y2="1520" x1="688" />
        <branch name="SPIN_LINK_O(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="859" y="1513" type="branch" />
            <wire x2="944" y1="1520" y2="1520" x1="784" />
        </branch>
        <bustap x2="784" y1="928" y2="928" x1="688" />
        <bustap x2="784" y1="3344" y2="3344" x1="688" />
        <branch name="SPIN_LINK_O(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1131" y="3337" type="branch" />
            <wire x2="1488" y1="3344" y2="3344" x1="784" />
        </branch>
        <bustap x2="784" y1="2880" y2="2880" x1="688" />
        <branch name="SPIN_LINK_O(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1139" y="2873" type="branch" />
            <wire x2="1504" y1="2880" y2="2880" x1="784" />
        </branch>
        <bustap x2="784" y1="2384" y2="2384" x1="688" />
        <branch name="SPIN_LINK_O(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1139" y="2377" type="branch" />
            <wire x2="1504" y1="2384" y2="2384" x1="784" />
        </branch>
        <bustap x2="784" y1="1872" y2="1872" x1="688" />
        <branch name="SPIN_LINK_O(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1147" y="1865" type="branch" />
            <wire x2="1520" y1="1872" y2="1872" x1="784" />
        </branch>
        <bustap x2="784" y1="1280" y2="1280" x1="688" />
        <branch name="SPIN_LINK_O(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1147" y="1273" type="branch" />
            <wire x2="1520" y1="1280" y2="1280" x1="784" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1424" y1="1520" y2="1520" x1="1328" />
            <wire x2="1424" y1="1344" y2="1520" x1="1424" />
            <wire x2="1520" y1="1344" y2="1344" x1="1424" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1408" y1="2080" y2="2080" x1="1312" />
            <wire x2="1408" y1="1936" y2="2080" x1="1408" />
            <wire x2="1520" y1="1936" y2="1936" x1="1408" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1408" y1="2576" y2="2576" x1="1312" />
            <wire x2="1408" y1="2448" y2="2576" x1="1408" />
            <wire x2="1504" y1="2448" y2="2448" x1="1408" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1392" y1="3040" y2="3040" x1="1296" />
            <wire x2="1392" y1="2944" y2="3040" x1="1392" />
            <wire x2="1504" y1="2944" y2="2944" x1="1392" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1376" y1="3520" y2="3520" x1="1280" />
            <wire x2="1376" y1="3408" y2="3520" x1="1376" />
            <wire x2="1488" y1="3408" y2="3408" x1="1376" />
        </branch>
        <branch name="NIBBLE_OUT(6:0)">
            <wire x2="2256" y1="96" y2="144" x1="2256" />
            <wire x2="2256" y1="144" y2="736" x1="2256" />
            <wire x2="2256" y1="736" y2="1312" x1="2256" />
            <wire x2="2256" y1="1312" y2="1904" x1="2256" />
            <wire x2="2256" y1="1904" y2="2416" x1="2256" />
            <wire x2="2256" y1="2416" y2="2912" x1="2256" />
            <wire x2="2256" y1="2912" y2="3376" x1="2256" />
            <wire x2="2256" y1="3376" y2="3504" x1="2256" />
            <wire x2="2256" y1="3504" y2="3568" x1="2256" />
            <wire x2="2256" y1="3568" y2="3632" x1="2256" />
            <wire x2="2256" y1="3632" y2="3696" x1="2256" />
            <wire x2="2256" y1="3696" y2="3760" x1="2256" />
            <wire x2="2256" y1="3760" y2="3824" x1="2256" />
            <wire x2="2256" y1="3824" y2="3888" x1="2256" />
            <wire x2="2256" y1="3888" y2="4032" x1="2256" />
            <wire x2="2256" y1="4032" y2="4096" x1="2256" />
            <wire x2="2256" y1="4096" y2="4160" x1="2256" />
            <wire x2="2256" y1="4160" y2="4224" x1="2256" />
            <wire x2="2256" y1="4224" y2="4288" x1="2256" />
            <wire x2="2256" y1="4288" y2="4352" x1="2256" />
            <wire x2="2256" y1="4352" y2="4416" x1="2256" />
        </branch>
        <bustap x2="2160" y1="3376" y2="3376" x1="2256" />
        <branch name="NIBBLE_OUT(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1947" y="3369" type="branch" />
            <wire x2="2160" y1="3376" y2="3376" x1="1744" />
        </branch>
        <bustap x2="2160" y1="2912" y2="2912" x1="2256" />
        <branch name="NIBBLE_OUT(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1955" y="2905" type="branch" />
            <wire x2="2160" y1="2912" y2="2912" x1="1760" />
        </branch>
        <bustap x2="2160" y1="2416" y2="2416" x1="2256" />
        <branch name="NIBBLE_OUT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1955" y="2409" type="branch" />
            <wire x2="2160" y1="2416" y2="2416" x1="1760" />
        </branch>
        <bustap x2="2160" y1="1904" y2="1904" x1="2256" />
        <branch name="NIBBLE_OUT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1963" y="1897" type="branch" />
            <wire x2="2160" y1="1904" y2="1904" x1="1776" />
        </branch>
        <bustap x2="2160" y1="1312" y2="1312" x1="2256" />
        <branch name="NIBBLE_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1963" y="1305" type="branch" />
            <wire x2="2160" y1="1312" y2="1312" x1="1776" />
        </branch>
        <bustap x2="2160" y1="736" y2="736" x1="2256" />
        <branch name="NIBBLE_OUT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1979" y="729" type="branch" />
            <wire x2="2160" y1="736" y2="736" x1="1808" />
        </branch>
        <bustap x2="2160" y1="144" y2="144" x1="2256" />
        <branch name="NIBBLE_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1979" y="137" type="branch" />
            <wire x2="2160" y1="144" y2="144" x1="1808" />
        </branch>
        <instance x="1552" y="832" name="XLXI_27" orien="R0" />
        <instance x="1520" y="1408" name="XLXI_28" orien="R0" />
        <instance x="1520" y="2000" name="XLXI_29" orien="R0" />
        <instance x="1504" y="2512" name="XLXI_30" orien="R0" />
        <instance x="1504" y="3008" name="XLXI_31" orien="R0" />
        <instance x="1488" y="3472" name="XLXI_32" orien="R0" />
        <iomarker fontsize="28" x="2256" y="96" name="NIBBLE_OUT(6:0)" orien="R0" />
        <iomarker fontsize="28" x="320" y="448" name="LOAD" orien="R180" />
        <iomarker fontsize="28" x="624" y="96" name="SPIN_LINK_O(6:0)" orien="R180" />
        <instance x="992" y="576" name="XLXI_64" orien="R0" />
        <instance x="944" y="1776" name="XLXI_66" orien="R0" />
        <instance x="928" y="2336" name="XLXI_67" orien="R0" />
        <instance x="928" y="2832" name="XLXI_68" orien="R0" />
        <instance x="912" y="3296" name="XLXI_69" orien="R0" />
        <instance x="896" y="3776" name="XLXI_70" orien="R0" />
        <branch name="LOAD">
            <wire x2="400" y1="448" y2="448" x1="320" />
            <wire x2="992" y1="448" y2="448" x1="400" />
            <wire x2="400" y1="448" y2="1056" x1="400" />
            <wire x2="400" y1="1056" y2="1648" x1="400" />
            <wire x2="944" y1="1648" y2="1648" x1="400" />
            <wire x2="400" y1="1648" y2="2208" x1="400" />
            <wire x2="928" y1="2208" y2="2208" x1="400" />
            <wire x2="400" y1="2208" y2="2704" x1="400" />
            <wire x2="928" y1="2704" y2="2704" x1="400" />
            <wire x2="400" y1="2704" y2="3168" x1="400" />
            <wire x2="912" y1="3168" y2="3168" x1="400" />
            <wire x2="400" y1="3168" y2="3648" x1="400" />
            <wire x2="896" y1="3648" y2="3648" x1="400" />
            <wire x2="976" y1="1056" y2="1056" x1="400" />
        </branch>
        <branch name="SPIN_LINK_O(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="864" y="928" type="branch" />
            <wire x2="864" y1="928" y2="928" x1="784" />
            <wire x2="976" y1="928" y2="928" x1="864" />
        </branch>
        <instance x="976" y="1184" name="XLXI_71" orien="R0" />
        <instance x="1312" y="4800" name="XLXI_55" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1296" y1="5024" y2="5024" x1="1168" />
            <wire x2="1312" y1="4736" y2="4736" x1="1296" />
            <wire x2="1296" y1="4736" y2="5024" x1="1296" />
        </branch>
        <branch name="DACK_CLR">
            <wire x2="784" y1="5152" y2="5152" x1="480" />
        </branch>
        <branch name="DACK">
            <wire x2="640" y1="4896" y2="4896" x1="368" />
            <wire x2="640" y1="4896" y2="5024" x1="640" />
            <wire x2="784" y1="5024" y2="5024" x1="640" />
            <wire x2="640" y1="4672" y2="4896" x1="640" />
            <wire x2="1312" y1="4672" y2="4672" x1="640" />
        </branch>
        <branch name="DACK_OUT">
            <wire x2="1824" y1="4704" y2="4704" x1="1568" />
        </branch>
        <instance x="784" y="5280" name="XLXI_72" orien="R0" />
        <iomarker fontsize="28" x="368" y="4896" name="DACK" orien="R180" />
        <iomarker fontsize="28" x="480" y="5152" name="DACK_CLR" orien="R180" />
        <iomarker fontsize="28" x="1824" y="4704" name="DACK_OUT" orien="R0" />
        <instance x="2624" y="3952" name="XLXI_77" orien="R0" />
        <bustap x2="2352" y1="3888" y2="3888" x1="2256" />
        <branch name="NIBBLE_OUT(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3888" type="branch" />
            <wire x2="2496" y1="3888" y2="3888" x1="2352" />
            <wire x2="2624" y1="3888" y2="3888" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3824" y2="3824" x1="2256" />
        <branch name="NIBBLE_OUT(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3824" type="branch" />
            <wire x2="2496" y1="3824" y2="3824" x1="2352" />
            <wire x2="2624" y1="3824" y2="3824" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3760" y2="3760" x1="2256" />
        <branch name="NIBBLE_OUT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3760" type="branch" />
            <wire x2="2496" y1="3760" y2="3760" x1="2352" />
            <wire x2="2624" y1="3760" y2="3760" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3696" y2="3696" x1="2256" />
        <branch name="NIBBLE_OUT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3696" type="branch" />
            <wire x2="2496" y1="3696" y2="3696" x1="2352" />
            <wire x2="2624" y1="3696" y2="3696" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3632" y2="3632" x1="2256" />
        <branch name="NIBBLE_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3632" type="branch" />
            <wire x2="2496" y1="3632" y2="3632" x1="2352" />
            <wire x2="2624" y1="3632" y2="3632" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3568" y2="3568" x1="2256" />
        <branch name="NIBBLE_OUT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3568" type="branch" />
            <wire x2="2496" y1="3568" y2="3568" x1="2352" />
            <wire x2="2624" y1="3568" y2="3568" x1="2496" />
        </branch>
        <bustap x2="2352" y1="3504" y2="3504" x1="2256" />
        <branch name="NIBBLE_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="3504" type="branch" />
            <wire x2="2496" y1="3504" y2="3504" x1="2352" />
            <wire x2="2624" y1="3504" y2="3504" x1="2496" />
        </branch>
        <instance x="2624" y="4480" name="XLXI_78" orien="R0" />
        <bustap x2="2352" y1="4416" y2="4416" x1="2256" />
        <branch name="NIBBLE_OUT(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4416" type="branch" />
            <wire x2="2496" y1="4416" y2="4416" x1="2352" />
            <wire x2="2624" y1="4416" y2="4416" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4352" y2="4352" x1="2256" />
        <branch name="NIBBLE_OUT(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4352" type="branch" />
            <wire x2="2496" y1="4352" y2="4352" x1="2352" />
            <wire x2="2624" y1="4352" y2="4352" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4288" y2="4288" x1="2256" />
        <branch name="NIBBLE_OUT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4288" type="branch" />
            <wire x2="2496" y1="4288" y2="4288" x1="2352" />
            <wire x2="2624" y1="4288" y2="4288" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4224" y2="4224" x1="2256" />
        <branch name="NIBBLE_OUT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4224" type="branch" />
            <wire x2="2496" y1="4224" y2="4224" x1="2352" />
            <wire x2="2624" y1="4224" y2="4224" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4160" y2="4160" x1="2256" />
        <branch name="NIBBLE_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4160" type="branch" />
            <wire x2="2496" y1="4160" y2="4160" x1="2352" />
            <wire x2="2624" y1="4160" y2="4160" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4096" y2="4096" x1="2256" />
        <branch name="NIBBLE_OUT(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4096" type="branch" />
            <wire x2="2496" y1="4096" y2="4096" x1="2352" />
            <wire x2="2624" y1="4096" y2="4096" x1="2496" />
        </branch>
        <bustap x2="2352" y1="4032" y2="4032" x1="2256" />
        <branch name="NIBBLE_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2488" y="4032" type="branch" />
            <wire x2="2496" y1="4032" y2="4032" x1="2352" />
            <wire x2="2624" y1="4032" y2="4032" x1="2496" />
        </branch>
        <branch name="NIBBLE_OR">
            <wire x2="2960" y1="3696" y2="3696" x1="2880" />
            <wire x2="3136" y1="3696" y2="3696" x1="2960" />
            <wire x2="2960" y1="3696" y2="3904" x1="2960" />
            <wire x2="2992" y1="3904" y2="3904" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3136" y="3696" name="NIBBLE_OR" orien="R0" />
        <branch name="NIBBLE_XOR">
            <wire x2="2960" y1="4224" y2="4224" x1="2880" />
            <wire x2="3152" y1="4224" y2="4224" x1="2960" />
            <wire x2="2960" y1="3968" y2="4224" x1="2960" />
            <wire x2="2992" y1="3968" y2="3968" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="3152" y="4224" name="NIBBLE_XOR" orien="R0" />
        <instance x="2992" y="4032" name="XLXI_80" orien="R0" />
        <branch name="OK">
            <wire x2="3264" y1="3936" y2="3936" x1="3248" />
            <wire x2="3424" y1="3936" y2="3936" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3424" y="3936" name="OK" orien="R0" />
    </sheet>
</drawing>