<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SYMBOL_IN(16:0)" />
        <signal name="SYMBOL_IN(15)" />
        <signal name="SYMBOL_IN(13)" />
        <signal name="SYMBOL_IN(11)" />
        <signal name="SYMBOL_IN(9)" />
        <signal name="SYMBOL_IN(7)" />
        <signal name="SYMBOL_IN(5)" />
        <signal name="SYMBOL_IN(3)" />
        <signal name="SYMBOL_IN(1)" />
        <signal name="SYMBOL_IN(0)" />
        <signal name="SYMBOL_IN(14)" />
        <signal name="SYMBOL_IN(12)" />
        <signal name="SYMBOL_IN(10)" />
        <signal name="SYMBOL_IN(6)" />
        <signal name="SYMBOL_IN(4)" />
        <signal name="SYMBOL_IN(2)" />
        <signal name="SYMBOL_IN(8)" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="DATA_OUT(4:0)" />
        <signal name="DATA_OUT(0)" />
        <signal name="DATA_OUT(1)" />
        <signal name="DATA_OUT(4)" />
        <signal name="SYMBOL_IN(16)" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="DATA_OUT(3)" />
        <signal name="DATA_OUT(2)" />
        <port polarity="Input" name="SYMBOL_IN(16:0)" />
        <port polarity="Output" name="DATA_OUT(4:0)" />
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <blockdef name="nor8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="64" y1="-336" y2="-336" x1="128" />
            <line x2="64" y1="-240" y2="-240" x1="128" />
            <arc ex="208" ey="-288" sx="128" sy="-240" r="88" cx="132" cy="-328" />
            <arc ex="128" ey="-336" sx="208" sy="-288" r="88" cx="132" cy="-248" />
            <line x2="228" y1="-288" y2="-288" x1="256" />
            <circle r="10" cx="218" cy="-286" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
            <line x2="48" y1="-336" y2="-336" x1="72" />
            <line x2="52" y1="-240" y2="-240" x1="72" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="or8" name="XLXI_1">
            <blockpin signalname="SYMBOL_IN(15)" name="I0" />
            <blockpin signalname="SYMBOL_IN(13)" name="I1" />
            <blockpin signalname="SYMBOL_IN(11)" name="I2" />
            <blockpin signalname="SYMBOL_IN(9)" name="I3" />
            <blockpin signalname="SYMBOL_IN(7)" name="I4" />
            <blockpin signalname="SYMBOL_IN(5)" name="I5" />
            <blockpin signalname="SYMBOL_IN(3)" name="I6" />
            <blockpin signalname="SYMBOL_IN(1)" name="I7" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_3">
            <blockpin signalname="SYMBOL_IN(15)" name="I0" />
            <blockpin signalname="SYMBOL_IN(14)" name="I1" />
            <blockpin signalname="SYMBOL_IN(11)" name="I2" />
            <blockpin signalname="SYMBOL_IN(10)" name="I3" />
            <blockpin signalname="SYMBOL_IN(7)" name="I4" />
            <blockpin signalname="SYMBOL_IN(6)" name="I5" />
            <blockpin signalname="SYMBOL_IN(3)" name="I6" />
            <blockpin signalname="SYMBOL_IN(2)" name="I7" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="nor8" name="XLXI_5">
            <blockpin signalname="SYMBOL_IN(13)" name="I0" />
            <blockpin signalname="SYMBOL_IN(12)" name="I1" />
            <blockpin signalname="SYMBOL_IN(9)" name="I2" />
            <blockpin signalname="SYMBOL_IN(8)" name="I3" />
            <blockpin signalname="SYMBOL_IN(5)" name="I4" />
            <blockpin signalname="SYMBOL_IN(4)" name="I5" />
            <blockpin signalname="SYMBOL_IN(1)" name="I6" />
            <blockpin signalname="SYMBOL_IN(0)" name="I7" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="nor8" name="XLXI_6">
            <blockpin signalname="SYMBOL_IN(14)" name="I0" />
            <blockpin signalname="SYMBOL_IN(12)" name="I1" />
            <blockpin signalname="SYMBOL_IN(10)" name="I2" />
            <blockpin signalname="SYMBOL_IN(8)" name="I3" />
            <blockpin signalname="SYMBOL_IN(6)" name="I4" />
            <blockpin signalname="SYMBOL_IN(4)" name="I5" />
            <blockpin signalname="SYMBOL_IN(2)" name="I6" />
            <blockpin signalname="SYMBOL_IN(0)" name="I7" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="DATA_OUT(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="DATA_OUT(1)" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_9">
            <blockpin signalname="SYMBOL_IN(15)" name="I0" />
            <blockpin signalname="SYMBOL_IN(14)" name="I1" />
            <blockpin signalname="SYMBOL_IN(13)" name="I2" />
            <blockpin signalname="SYMBOL_IN(12)" name="I3" />
            <blockpin signalname="SYMBOL_IN(7)" name="I4" />
            <blockpin signalname="SYMBOL_IN(6)" name="I5" />
            <blockpin signalname="SYMBOL_IN(5)" name="I6" />
            <blockpin signalname="SYMBOL_IN(4)" name="I7" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="nor8" name="XLXI_10">
            <blockpin signalname="SYMBOL_IN(11)" name="I0" />
            <blockpin signalname="SYMBOL_IN(10)" name="I1" />
            <blockpin signalname="SYMBOL_IN(9)" name="I2" />
            <blockpin signalname="SYMBOL_IN(8)" name="I3" />
            <blockpin signalname="SYMBOL_IN(3)" name="I4" />
            <blockpin signalname="SYMBOL_IN(2)" name="I5" />
            <blockpin signalname="SYMBOL_IN(1)" name="I6" />
            <blockpin signalname="SYMBOL_IN(0)" name="I7" />
            <blockpin signalname="XLXN_96" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_11">
            <blockpin signalname="SYMBOL_IN(15)" name="I0" />
            <blockpin signalname="SYMBOL_IN(14)" name="I1" />
            <blockpin signalname="SYMBOL_IN(13)" name="I2" />
            <blockpin signalname="SYMBOL_IN(12)" name="I3" />
            <blockpin signalname="SYMBOL_IN(11)" name="I4" />
            <blockpin signalname="SYMBOL_IN(10)" name="I5" />
            <blockpin signalname="SYMBOL_IN(9)" name="I6" />
            <blockpin signalname="SYMBOL_IN(8)" name="I7" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="nor8" name="XLXI_12">
            <blockpin signalname="SYMBOL_IN(7)" name="I0" />
            <blockpin signalname="SYMBOL_IN(6)" name="I1" />
            <blockpin signalname="SYMBOL_IN(5)" name="I2" />
            <blockpin signalname="SYMBOL_IN(4)" name="I3" />
            <blockpin signalname="SYMBOL_IN(3)" name="I4" />
            <blockpin signalname="SYMBOL_IN(2)" name="I5" />
            <blockpin signalname="SYMBOL_IN(1)" name="I6" />
            <blockpin signalname="SYMBOL_IN(0)" name="I7" />
            <blockpin signalname="XLXN_94" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="SYMBOL_IN(16)" name="I" />
            <blockpin signalname="DATA_OUT(4)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="XLXN_97" name="I1" />
            <blockpin signalname="DATA_OUT(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_94" name="I0" />
            <blockpin signalname="XLXN_95" name="I1" />
            <blockpin signalname="DATA_OUT(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SYMBOL_IN(16:0)">
            <wire x2="1456" y1="672" y2="672" x1="1392" />
            <wire x2="1456" y1="672" y2="704" x1="1456" />
            <wire x2="1456" y1="704" y2="720" x1="1456" />
            <wire x2="1456" y1="720" y2="848" x1="1456" />
            <wire x2="1456" y1="848" y2="864" x1="1456" />
            <wire x2="1456" y1="864" y2="928" x1="1456" />
            <wire x2="1456" y1="928" y2="992" x1="1456" />
            <wire x2="1456" y1="992" y2="1056" x1="1456" />
            <wire x2="1456" y1="1056" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1184" x1="1456" />
            <wire x2="1456" y1="1184" y2="1248" x1="1456" />
            <wire x2="1456" y1="1248" y2="1312" x1="1456" />
            <wire x2="1456" y1="1312" y2="1392" x1="1456" />
            <wire x2="1456" y1="1392" y2="1456" x1="1456" />
            <wire x2="1456" y1="1456" y2="1520" x1="1456" />
            <wire x2="1456" y1="1520" y2="1584" x1="1456" />
            <wire x2="1456" y1="1584" y2="1648" x1="1456" />
            <wire x2="1456" y1="1648" y2="1712" x1="1456" />
            <wire x2="1456" y1="1712" y2="1776" x1="1456" />
            <wire x2="1456" y1="1776" y2="1840" x1="1456" />
            <wire x2="1456" y1="1840" y2="1936" x1="1456" />
            <wire x2="1456" y1="1936" y2="2000" x1="1456" />
            <wire x2="1456" y1="2000" y2="2064" x1="1456" />
            <wire x2="1456" y1="2064" y2="2128" x1="1456" />
            <wire x2="1456" y1="2128" y2="2192" x1="1456" />
            <wire x2="1456" y1="2192" y2="2256" x1="1456" />
            <wire x2="1456" y1="2256" y2="2320" x1="1456" />
            <wire x2="1456" y1="2320" y2="2384" x1="1456" />
            <wire x2="1456" y1="2384" y2="2496" x1="1456" />
            <wire x2="1456" y1="2496" y2="2560" x1="1456" />
            <wire x2="1456" y1="2560" y2="2624" x1="1456" />
            <wire x2="1456" y1="2624" y2="2688" x1="1456" />
            <wire x2="1456" y1="2688" y2="2752" x1="1456" />
            <wire x2="1456" y1="2752" y2="2816" x1="1456" />
            <wire x2="1456" y1="2816" y2="2880" x1="1456" />
            <wire x2="1456" y1="2880" y2="2944" x1="1456" />
            <wire x2="1456" y1="2944" y2="3088" x1="1456" />
            <wire x2="1456" y1="3088" y2="3152" x1="1456" />
            <wire x2="1456" y1="3152" y2="3216" x1="1456" />
            <wire x2="1456" y1="3216" y2="3280" x1="1456" />
            <wire x2="1456" y1="3280" y2="3344" x1="1456" />
            <wire x2="1456" y1="3344" y2="3408" x1="1456" />
            <wire x2="1456" y1="3408" y2="3472" x1="1456" />
            <wire x2="1456" y1="3472" y2="3536" x1="1456" />
            <wire x2="1456" y1="3536" y2="3632" x1="1456" />
            <wire x2="1456" y1="3632" y2="3696" x1="1456" />
            <wire x2="1456" y1="3696" y2="3760" x1="1456" />
            <wire x2="1456" y1="3760" y2="3824" x1="1456" />
            <wire x2="1456" y1="3824" y2="3888" x1="1456" />
            <wire x2="1456" y1="3888" y2="3952" x1="1456" />
            <wire x2="1456" y1="3952" y2="4016" x1="1456" />
            <wire x2="1456" y1="4016" y2="4080" x1="1456" />
            <wire x2="1456" y1="4080" y2="4176" x1="1456" />
            <wire x2="1456" y1="4176" y2="4240" x1="1456" />
            <wire x2="1456" y1="4240" y2="4304" x1="1456" />
            <wire x2="1456" y1="4304" y2="4368" x1="1456" />
            <wire x2="1456" y1="4368" y2="4432" x1="1456" />
            <wire x2="1456" y1="4432" y2="4496" x1="1456" />
            <wire x2="1456" y1="4496" y2="4560" x1="1456" />
            <wire x2="1456" y1="4560" y2="4624" x1="1456" />
            <wire x2="1456" y1="4624" y2="4704" x1="1456" />
            <wire x2="1456" y1="4704" y2="4752" x1="1456" />
            <wire x2="1456" y1="4752" y2="4768" x1="1456" />
            <wire x2="1456" y1="4768" y2="4832" x1="1456" />
            <wire x2="1456" y1="4832" y2="4896" x1="1456" />
            <wire x2="1456" y1="4896" y2="4960" x1="1456" />
            <wire x2="1456" y1="4960" y2="5024" x1="1456" />
            <wire x2="1456" y1="5024" y2="5088" x1="1456" />
            <wire x2="1456" y1="5088" y2="5152" x1="1456" />
        </branch>
        <instance x="2208" y="1376" name="XLXI_1" orien="R0" />
        <instance x="2208" y="2448" name="XLXI_3" orien="R0" />
        <bustap x2="1552" y1="2384" y2="2384" x1="1456" />
        <branch name="SYMBOL_IN(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2384" type="branch" />
            <wire x2="1888" y1="2384" y2="2384" x1="1552" />
            <wire x2="2208" y1="2384" y2="2384" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2320" y2="2320" x1="1456" />
        <branch name="SYMBOL_IN(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2320" type="branch" />
            <wire x2="1888" y1="2320" y2="2320" x1="1552" />
            <wire x2="2208" y1="2320" y2="2320" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2944" y2="2944" x1="1456" />
        <branch name="SYMBOL_IN(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2944" type="branch" />
            <wire x2="1888" y1="2944" y2="2944" x1="1552" />
            <wire x2="2208" y1="2944" y2="2944" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2880" y2="2880" x1="1456" />
        <branch name="SYMBOL_IN(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2880" type="branch" />
            <wire x2="1888" y1="2880" y2="2880" x1="1552" />
            <wire x2="2208" y1="2880" y2="2880" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2256" y2="2256" x1="1456" />
        <branch name="SYMBOL_IN(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2256" type="branch" />
            <wire x2="1888" y1="2256" y2="2256" x1="1552" />
            <wire x2="2208" y1="2256" y2="2256" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2192" y2="2192" x1="1456" />
        <branch name="SYMBOL_IN(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2192" type="branch" />
            <wire x2="1888" y1="2192" y2="2192" x1="1552" />
            <wire x2="2208" y1="2192" y2="2192" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2816" y2="2816" x1="1456" />
        <branch name="SYMBOL_IN(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2816" type="branch" />
            <wire x2="1888" y1="2816" y2="2816" x1="1552" />
            <wire x2="2208" y1="2816" y2="2816" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2128" y2="2128" x1="1456" />
        <branch name="SYMBOL_IN(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2128" type="branch" />
            <wire x2="1888" y1="2128" y2="2128" x1="1552" />
            <wire x2="2208" y1="2128" y2="2128" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2064" y2="2064" x1="1456" />
        <branch name="SYMBOL_IN(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2064" type="branch" />
            <wire x2="1888" y1="2064" y2="2064" x1="1552" />
            <wire x2="2208" y1="2064" y2="2064" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2688" y2="2688" x1="1456" />
        <branch name="SYMBOL_IN(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2688" type="branch" />
            <wire x2="1888" y1="2688" y2="2688" x1="1552" />
            <wire x2="2208" y1="2688" y2="2688" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2624" y2="2624" x1="1456" />
        <branch name="SYMBOL_IN(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2624" type="branch" />
            <wire x2="1888" y1="2624" y2="2624" x1="1552" />
            <wire x2="2208" y1="2624" y2="2624" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2000" y2="2000" x1="1456" />
        <branch name="SYMBOL_IN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2000" type="branch" />
            <wire x2="1888" y1="2000" y2="2000" x1="1552" />
            <wire x2="2208" y1="2000" y2="2000" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1936" y2="1936" x1="1456" />
        <branch name="SYMBOL_IN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1936" type="branch" />
            <wire x2="1888" y1="1936" y2="1936" x1="1552" />
            <wire x2="2208" y1="1936" y2="1936" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2560" y2="2560" x1="1456" />
        <branch name="SYMBOL_IN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2560" type="branch" />
            <wire x2="1888" y1="2560" y2="2560" x1="1552" />
            <wire x2="2208" y1="2560" y2="2560" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2496" y2="2496" x1="1456" />
        <branch name="SYMBOL_IN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2496" type="branch" />
            <wire x2="1888" y1="2496" y2="2496" x1="1552" />
            <wire x2="2208" y1="2496" y2="2496" x1="1888" />
        </branch>
        <bustap x2="1552" y1="2752" y2="2752" x1="1456" />
        <branch name="SYMBOL_IN(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="2752" type="branch" />
            <wire x2="1888" y1="2752" y2="2752" x1="1552" />
            <wire x2="2208" y1="2752" y2="2752" x1="1888" />
        </branch>
        <instance x="2208" y="3008" name="XLXI_5" orien="R0" />
        <instance x="2208" y="1904" name="XLXI_6" orien="R0" />
        <bustap x2="1552" y1="1312" y2="1312" x1="1456" />
        <branch name="SYMBOL_IN(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1312" type="branch" />
            <wire x2="1888" y1="1312" y2="1312" x1="1552" />
            <wire x2="2208" y1="1312" y2="1312" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1840" y2="1840" x1="1456" />
        <branch name="SYMBOL_IN(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1840" type="branch" />
            <wire x2="1888" y1="1840" y2="1840" x1="1552" />
            <wire x2="2208" y1="1840" y2="1840" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1248" y2="1248" x1="1456" />
        <branch name="SYMBOL_IN(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1248" type="branch" />
            <wire x2="1888" y1="1248" y2="1248" x1="1552" />
            <wire x2="2208" y1="1248" y2="1248" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1776" y2="1776" x1="1456" />
        <branch name="SYMBOL_IN(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1776" type="branch" />
            <wire x2="1888" y1="1776" y2="1776" x1="1552" />
            <wire x2="2208" y1="1776" y2="1776" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1184" y2="1184" x1="1456" />
        <branch name="SYMBOL_IN(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1184" type="branch" />
            <wire x2="1888" y1="1184" y2="1184" x1="1552" />
            <wire x2="2208" y1="1184" y2="1184" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1712" y2="1712" x1="1456" />
        <branch name="SYMBOL_IN(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1712" type="branch" />
            <wire x2="1888" y1="1712" y2="1712" x1="1552" />
            <wire x2="2208" y1="1712" y2="1712" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1120" y2="1120" x1="1456" />
        <branch name="SYMBOL_IN(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1120" type="branch" />
            <wire x2="1888" y1="1120" y2="1120" x1="1552" />
            <wire x2="2208" y1="1120" y2="1120" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1648" y2="1648" x1="1456" />
        <branch name="SYMBOL_IN(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1648" type="branch" />
            <wire x2="1888" y1="1648" y2="1648" x1="1552" />
            <wire x2="2208" y1="1648" y2="1648" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1056" y2="1056" x1="1456" />
        <branch name="SYMBOL_IN(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1056" type="branch" />
            <wire x2="1888" y1="1056" y2="1056" x1="1552" />
            <wire x2="2208" y1="1056" y2="1056" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1584" y2="1584" x1="1456" />
        <branch name="SYMBOL_IN(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1584" type="branch" />
            <wire x2="1888" y1="1584" y2="1584" x1="1552" />
            <wire x2="2208" y1="1584" y2="1584" x1="1888" />
        </branch>
        <bustap x2="1552" y1="992" y2="992" x1="1456" />
        <branch name="SYMBOL_IN(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="992" type="branch" />
            <wire x2="1888" y1="992" y2="992" x1="1552" />
            <wire x2="2208" y1="992" y2="992" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1520" y2="1520" x1="1456" />
        <branch name="SYMBOL_IN(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1520" type="branch" />
            <wire x2="1888" y1="1520" y2="1520" x1="1552" />
            <wire x2="2208" y1="1520" y2="1520" x1="1888" />
        </branch>
        <bustap x2="1552" y1="928" y2="928" x1="1456" />
        <branch name="SYMBOL_IN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="928" type="branch" />
            <wire x2="1888" y1="928" y2="928" x1="1552" />
            <wire x2="2208" y1="928" y2="928" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1456" y2="1456" x1="1456" />
        <branch name="SYMBOL_IN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1456" type="branch" />
            <wire x2="1888" y1="1456" y2="1456" x1="1552" />
            <wire x2="2208" y1="1456" y2="1456" x1="1888" />
        </branch>
        <bustap x2="1552" y1="864" y2="864" x1="1456" />
        <branch name="SYMBOL_IN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="864" type="branch" />
            <wire x2="1888" y1="864" y2="864" x1="1552" />
            <wire x2="2208" y1="864" y2="864" x1="1888" />
        </branch>
        <bustap x2="1552" y1="1392" y2="1392" x1="1456" />
        <branch name="SYMBOL_IN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="1392" type="branch" />
            <wire x2="1888" y1="1392" y2="1392" x1="1552" />
            <wire x2="2208" y1="1392" y2="1392" x1="1888" />
        </branch>
        <instance x="2640" y="1440" name="XLXI_7" orien="R0" />
        <instance x="2656" y="2544" name="XLXI_8" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="2544" y1="1616" y2="1616" x1="2464" />
            <wire x2="2544" y1="1376" y2="1616" x1="2544" />
            <wire x2="2640" y1="1376" y2="1376" x1="2544" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2544" y1="1088" y2="1088" x1="2464" />
            <wire x2="2544" y1="1088" y2="1312" x1="2544" />
            <wire x2="2640" y1="1312" y2="1312" x1="2544" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2560" y1="2160" y2="2160" x1="2464" />
            <wire x2="2560" y1="2160" y2="2416" x1="2560" />
            <wire x2="2656" y1="2416" y2="2416" x1="2560" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="2560" y1="2720" y2="2720" x1="2464" />
            <wire x2="2560" y1="2480" y2="2720" x1="2560" />
            <wire x2="2656" y1="2480" y2="2480" x1="2560" />
        </branch>
        <branch name="DATA_OUT(4:0)">
            <wire x2="3488" y1="688" y2="688" x1="3392" />
            <wire x2="3392" y1="688" y2="704" x1="3392" />
            <wire x2="3392" y1="704" y2="1328" x1="3392" />
            <wire x2="3392" y1="1328" y2="1344" x1="3392" />
            <wire x2="3392" y1="1344" y2="2448" x1="3392" />
            <wire x2="3392" y1="2448" y2="3600" x1="3392" />
            <wire x2="3392" y1="3600" y2="4672" x1="3392" />
        </branch>
        <bustap x2="3296" y1="1344" y2="1344" x1="3392" />
        <branch name="DATA_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3096" y="1344" type="branch" />
            <wire x2="3104" y1="1344" y2="1344" x1="2896" />
            <wire x2="3296" y1="1344" y2="1344" x1="3104" />
        </branch>
        <bustap x2="3296" y1="2448" y2="2448" x1="3392" />
        <branch name="DATA_OUT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="2448" type="branch" />
            <wire x2="3104" y1="2448" y2="2448" x1="2912" />
            <wire x2="3296" y1="2448" y2="2448" x1="3104" />
        </branch>
        <instance x="2208" y="3600" name="XLXI_9" orien="R0" />
        <instance x="2208" y="4144" name="XLXI_10" orien="R0" />
        <instance x="2208" y="4688" name="XLXI_11" orien="R0" />
        <instance x="2208" y="5216" name="XLXI_12" orien="R0" />
        <iomarker fontsize="28" x="3488" y="688" name="DATA_OUT(4:0)" orien="R0" />
        <iomarker fontsize="28" x="1392" y="672" name="SYMBOL_IN(16:0)" orien="R180" />
        <instance x="2336" y="736" name="XLXI_13" orien="R0" />
        <bustap x2="3296" y1="704" y2="704" x1="3392" />
        <branch name="DATA_OUT(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="704" type="branch" />
            <wire x2="2928" y1="704" y2="704" x1="2560" />
            <wire x2="3296" y1="704" y2="704" x1="2928" />
        </branch>
        <bustap x2="1552" y1="704" y2="704" x1="1456" />
        <branch name="SYMBOL_IN(16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1944" y="704" type="branch" />
            <wire x2="1952" y1="704" y2="704" x1="1552" />
            <wire x2="2336" y1="704" y2="704" x1="1952" />
        </branch>
        <bustap x2="1552" y1="3536" y2="3536" x1="1456" />
        <branch name="SYMBOL_IN(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3536" type="branch" />
            <wire x2="1888" y1="3536" y2="3536" x1="1552" />
            <wire x2="2208" y1="3536" y2="3536" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3472" y2="3472" x1="1456" />
        <branch name="SYMBOL_IN(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3472" type="branch" />
            <wire x2="1888" y1="3472" y2="3472" x1="1552" />
            <wire x2="2208" y1="3472" y2="3472" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3408" y2="3408" x1="1456" />
        <branch name="SYMBOL_IN(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3408" type="branch" />
            <wire x2="1888" y1="3408" y2="3408" x1="1552" />
            <wire x2="2208" y1="3408" y2="3408" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3344" y2="3344" x1="1456" />
        <branch name="SYMBOL_IN(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3344" type="branch" />
            <wire x2="1888" y1="3344" y2="3344" x1="1552" />
            <wire x2="2208" y1="3344" y2="3344" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4080" y2="4080" x1="1456" />
        <branch name="SYMBOL_IN(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4080" type="branch" />
            <wire x2="1888" y1="4080" y2="4080" x1="1552" />
            <wire x2="2208" y1="4080" y2="4080" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4016" y2="4016" x1="1456" />
        <branch name="SYMBOL_IN(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4016" type="branch" />
            <wire x2="1888" y1="4016" y2="4016" x1="1552" />
            <wire x2="2208" y1="4016" y2="4016" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3952" y2="3952" x1="1456" />
        <branch name="SYMBOL_IN(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3952" type="branch" />
            <wire x2="1888" y1="3952" y2="3952" x1="1552" />
            <wire x2="2208" y1="3952" y2="3952" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3888" y2="3888" x1="1456" />
        <branch name="SYMBOL_IN(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3888" type="branch" />
            <wire x2="1888" y1="3888" y2="3888" x1="1552" />
            <wire x2="2208" y1="3888" y2="3888" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3280" y2="3280" x1="1456" />
        <branch name="SYMBOL_IN(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3280" type="branch" />
            <wire x2="1888" y1="3280" y2="3280" x1="1552" />
            <wire x2="2208" y1="3280" y2="3280" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3216" y2="3216" x1="1456" />
        <branch name="SYMBOL_IN(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3216" type="branch" />
            <wire x2="1888" y1="3216" y2="3216" x1="1552" />
            <wire x2="2208" y1="3216" y2="3216" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3152" y2="3152" x1="1456" />
        <branch name="SYMBOL_IN(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3152" type="branch" />
            <wire x2="1888" y1="3152" y2="3152" x1="1552" />
            <wire x2="2208" y1="3152" y2="3152" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3088" y2="3088" x1="1456" />
        <branch name="SYMBOL_IN(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3088" type="branch" />
            <wire x2="1888" y1="3088" y2="3088" x1="1552" />
            <wire x2="2208" y1="3088" y2="3088" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3824" y2="3824" x1="1456" />
        <branch name="SYMBOL_IN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3824" type="branch" />
            <wire x2="1888" y1="3824" y2="3824" x1="1552" />
            <wire x2="2208" y1="3824" y2="3824" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3760" y2="3760" x1="1456" />
        <branch name="SYMBOL_IN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3760" type="branch" />
            <wire x2="1888" y1="3760" y2="3760" x1="1552" />
            <wire x2="2208" y1="3760" y2="3760" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3696" y2="3696" x1="1456" />
        <branch name="SYMBOL_IN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3696" type="branch" />
            <wire x2="1888" y1="3696" y2="3696" x1="1552" />
            <wire x2="2208" y1="3696" y2="3696" x1="1888" />
        </branch>
        <bustap x2="1552" y1="3632" y2="3632" x1="1456" />
        <branch name="SYMBOL_IN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="3632" type="branch" />
            <wire x2="1888" y1="3632" y2="3632" x1="1552" />
            <wire x2="2208" y1="3632" y2="3632" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4624" y2="4624" x1="1456" />
        <branch name="SYMBOL_IN(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4624" type="branch" />
            <wire x2="1888" y1="4624" y2="4624" x1="1552" />
            <wire x2="2208" y1="4624" y2="4624" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4560" y2="4560" x1="1456" />
        <branch name="SYMBOL_IN(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4560" type="branch" />
            <wire x2="1888" y1="4560" y2="4560" x1="1552" />
            <wire x2="2208" y1="4560" y2="4560" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4496" y2="4496" x1="1456" />
        <branch name="SYMBOL_IN(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4496" type="branch" />
            <wire x2="1888" y1="4496" y2="4496" x1="1552" />
            <wire x2="2208" y1="4496" y2="4496" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4432" y2="4432" x1="1456" />
        <branch name="SYMBOL_IN(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4432" type="branch" />
            <wire x2="1888" y1="4432" y2="4432" x1="1552" />
            <wire x2="2208" y1="4432" y2="4432" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4368" y2="4368" x1="1456" />
        <branch name="SYMBOL_IN(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4368" type="branch" />
            <wire x2="1888" y1="4368" y2="4368" x1="1552" />
            <wire x2="2208" y1="4368" y2="4368" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4304" y2="4304" x1="1456" />
        <branch name="SYMBOL_IN(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4304" type="branch" />
            <wire x2="1888" y1="4304" y2="4304" x1="1552" />
            <wire x2="2208" y1="4304" y2="4304" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4240" y2="4240" x1="1456" />
        <branch name="SYMBOL_IN(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4240" type="branch" />
            <wire x2="1888" y1="4240" y2="4240" x1="1552" />
            <wire x2="2208" y1="4240" y2="4240" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4176" y2="4176" x1="1456" />
        <branch name="SYMBOL_IN(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4176" type="branch" />
            <wire x2="1888" y1="4176" y2="4176" x1="1552" />
            <wire x2="2208" y1="4176" y2="4176" x1="1888" />
        </branch>
        <bustap x2="1552" y1="5152" y2="5152" x1="1456" />
        <branch name="SYMBOL_IN(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="5152" type="branch" />
            <wire x2="1888" y1="5152" y2="5152" x1="1552" />
            <wire x2="2208" y1="5152" y2="5152" x1="1888" />
        </branch>
        <bustap x2="1552" y1="5088" y2="5088" x1="1456" />
        <branch name="SYMBOL_IN(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="5088" type="branch" />
            <wire x2="1888" y1="5088" y2="5088" x1="1552" />
            <wire x2="2208" y1="5088" y2="5088" x1="1888" />
        </branch>
        <bustap x2="1552" y1="5024" y2="5024" x1="1456" />
        <branch name="SYMBOL_IN(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="5024" type="branch" />
            <wire x2="1888" y1="5024" y2="5024" x1="1552" />
            <wire x2="2208" y1="5024" y2="5024" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4960" y2="4960" x1="1456" />
        <branch name="SYMBOL_IN(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4960" type="branch" />
            <wire x2="1888" y1="4960" y2="4960" x1="1552" />
            <wire x2="2208" y1="4960" y2="4960" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4896" y2="4896" x1="1456" />
        <branch name="SYMBOL_IN(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4896" type="branch" />
            <wire x2="1888" y1="4896" y2="4896" x1="1552" />
            <wire x2="2208" y1="4896" y2="4896" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4832" y2="4832" x1="1456" />
        <branch name="SYMBOL_IN(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4832" type="branch" />
            <wire x2="1888" y1="4832" y2="4832" x1="1552" />
            <wire x2="2208" y1="4832" y2="4832" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4768" y2="4768" x1="1456" />
        <branch name="SYMBOL_IN(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4768" type="branch" />
            <wire x2="1888" y1="4768" y2="4768" x1="1552" />
            <wire x2="2208" y1="4768" y2="4768" x1="1888" />
        </branch>
        <bustap x2="1552" y1="4704" y2="4704" x1="1456" />
        <branch name="SYMBOL_IN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1880" y="4704" type="branch" />
            <wire x2="1888" y1="4704" y2="4704" x1="1552" />
            <wire x2="2208" y1="4704" y2="4704" x1="1888" />
        </branch>
        <instance x="2656" y="3696" name="XLXI_14" orien="R0" />
        <instance x="2624" y="4768" name="XLXI_15" orien="R0" />
        <branch name="XLXN_94">
            <wire x2="2544" y1="4928" y2="4928" x1="2464" />
            <wire x2="2544" y1="4704" y2="4928" x1="2544" />
            <wire x2="2624" y1="4704" y2="4704" x1="2544" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="2544" y1="4400" y2="4400" x1="2464" />
            <wire x2="2544" y1="4400" y2="4640" x1="2544" />
            <wire x2="2624" y1="4640" y2="4640" x1="2544" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="2560" y1="3856" y2="3856" x1="2464" />
            <wire x2="2560" y1="3632" y2="3856" x1="2560" />
            <wire x2="2656" y1="3632" y2="3632" x1="2560" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="2560" y1="3312" y2="3312" x1="2464" />
            <wire x2="2560" y1="3312" y2="3568" x1="2560" />
            <wire x2="2656" y1="3568" y2="3568" x1="2560" />
        </branch>
        <bustap x2="3296" y1="4672" y2="4672" x1="3392" />
        <branch name="DATA_OUT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3088" y="4672" type="branch" />
            <wire x2="3088" y1="4672" y2="4672" x1="2880" />
            <wire x2="3296" y1="4672" y2="4672" x1="3088" />
        </branch>
        <bustap x2="3296" y1="3600" y2="3600" x1="3392" />
        <branch name="DATA_OUT(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3104" y="3600" type="branch" />
            <wire x2="3104" y1="3600" y2="3600" x1="2912" />
            <wire x2="3296" y1="3600" y2="3600" x1="3104" />
        </branch>
    </sheet>
</drawing>