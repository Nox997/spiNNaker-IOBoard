<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SYMBOL(16:0)" />
        <signal name="NIBBLE(6:0)" />
        <signal name="SYMBOL(15)" />
        <signal name="SYMBOL(12)" />
        <signal name="SYMBOL(8)" />
        <signal name="SYMBOL(4)" />
        <signal name="SYMBOL(0)" />
        <signal name="NIBBLE(0)" />
        <signal name="SYMBOL(13)" />
        <signal name="SYMBOL(9)" />
        <signal name="SYMBOL(5)" />
        <signal name="SYMBOL(1)" />
        <signal name="NIBBLE(1)" />
        <signal name="SYMBOL(14)" />
        <signal name="SYMBOL(10)" />
        <signal name="SYMBOL(6)" />
        <signal name="SYMBOL(2)" />
        <signal name="SYMBOL(11)" />
        <signal name="SYMBOL(7)" />
        <signal name="SYMBOL(3)" />
        <signal name="SYMBOL(16)" />
        <signal name="NIBBLE(6)" />
        <signal name="NIBBLE(5)" />
        <signal name="NIBBLE(4)" />
        <signal name="NIBBLE(3)" />
        <signal name="NIBBLE(2)" />
        <port polarity="Input" name="SYMBOL(16:0)" />
        <port polarity="Output" name="NIBBLE(6:0)" />
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="or5" name="XLXI_30">
            <blockpin signalname="SYMBOL(15)" name="I0" />
            <blockpin signalname="SYMBOL(12)" name="I1" />
            <blockpin signalname="SYMBOL(8)" name="I2" />
            <blockpin signalname="SYMBOL(4)" name="I3" />
            <blockpin signalname="SYMBOL(0)" name="I4" />
            <blockpin signalname="NIBBLE(0)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_31">
            <blockpin signalname="SYMBOL(13)" name="I0" />
            <blockpin signalname="SYMBOL(12)" name="I1" />
            <blockpin signalname="SYMBOL(9)" name="I2" />
            <blockpin signalname="SYMBOL(5)" name="I3" />
            <blockpin signalname="SYMBOL(1)" name="I4" />
            <blockpin signalname="NIBBLE(1)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_32">
            <blockpin signalname="SYMBOL(14)" name="I0" />
            <blockpin signalname="SYMBOL(13)" name="I1" />
            <blockpin signalname="SYMBOL(10)" name="I2" />
            <blockpin signalname="SYMBOL(6)" name="I3" />
            <blockpin signalname="SYMBOL(2)" name="I4" />
            <blockpin signalname="NIBBLE(2)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_33">
            <blockpin signalname="SYMBOL(15)" name="I0" />
            <blockpin signalname="SYMBOL(14)" name="I1" />
            <blockpin signalname="SYMBOL(11)" name="I2" />
            <blockpin signalname="SYMBOL(7)" name="I3" />
            <blockpin signalname="SYMBOL(3)" name="I4" />
            <blockpin signalname="NIBBLE(3)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_36">
            <blockpin signalname="SYMBOL(3)" name="I0" />
            <blockpin signalname="SYMBOL(2)" name="I1" />
            <blockpin signalname="SYMBOL(1)" name="I2" />
            <blockpin signalname="SYMBOL(0)" name="I3" />
            <blockpin signalname="NIBBLE(4)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_34">
            <blockpin signalname="SYMBOL(16)" name="I0" />
            <blockpin signalname="SYMBOL(7)" name="I1" />
            <blockpin signalname="SYMBOL(6)" name="I2" />
            <blockpin signalname="SYMBOL(5)" name="I3" />
            <blockpin signalname="SYMBOL(4)" name="I4" />
            <blockpin signalname="NIBBLE(5)" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_35">
            <blockpin signalname="SYMBOL(16)" name="I0" />
            <blockpin signalname="SYMBOL(11)" name="I1" />
            <blockpin signalname="SYMBOL(10)" name="I2" />
            <blockpin signalname="SYMBOL(9)" name="I3" />
            <blockpin signalname="SYMBOL(8)" name="I4" />
            <blockpin signalname="NIBBLE(6)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="SYMBOL(16:0)">
            <wire x2="1440" y1="880" y2="928" x1="1440" />
            <wire x2="1440" y1="928" y2="992" x1="1440" />
            <wire x2="1440" y1="992" y2="1056" x1="1440" />
            <wire x2="1440" y1="1056" y2="1120" x1="1440" />
            <wire x2="1440" y1="1120" y2="1184" x1="1440" />
            <wire x2="1440" y1="1184" y2="1264" x1="1440" />
            <wire x2="1440" y1="1264" y2="1328" x1="1440" />
            <wire x2="1440" y1="1328" y2="1392" x1="1440" />
            <wire x2="1440" y1="1392" y2="1456" x1="1440" />
            <wire x2="1440" y1="1456" y2="1520" x1="1440" />
            <wire x2="1440" y1="1520" y2="1584" x1="1440" />
            <wire x2="1440" y1="1584" y2="1648" x1="1440" />
            <wire x2="1440" y1="1648" y2="1712" x1="1440" />
            <wire x2="1440" y1="1712" y2="1776" x1="1440" />
            <wire x2="1440" y1="1776" y2="1840" x1="1440" />
            <wire x2="1440" y1="1840" y2="1904" x1="1440" />
            <wire x2="1440" y1="1904" y2="1968" x1="1440" />
            <wire x2="1440" y1="1968" y2="2032" x1="1440" />
            <wire x2="1440" y1="2032" y2="2096" x1="1440" />
            <wire x2="1440" y1="2096" y2="2160" x1="1440" />
            <wire x2="1440" y1="2160" y2="2272" x1="1440" />
            <wire x2="1440" y1="2272" y2="2336" x1="1440" />
            <wire x2="1440" y1="2336" y2="2400" x1="1440" />
            <wire x2="1440" y1="2400" y2="2464" x1="1440" />
            <wire x2="1440" y1="2464" y2="2544" x1="1440" />
            <wire x2="1440" y1="2544" y2="2608" x1="1440" />
            <wire x2="1440" y1="2608" y2="2672" x1="1440" />
            <wire x2="1440" y1="2672" y2="2736" x1="1440" />
            <wire x2="1440" y1="2736" y2="2800" x1="1440" />
            <wire x2="1440" y1="2800" y2="2880" x1="1440" />
            <wire x2="1440" y1="2880" y2="2944" x1="1440" />
            <wire x2="1440" y1="2944" y2="3008" x1="1440" />
            <wire x2="1440" y1="3008" y2="3072" x1="1440" />
            <wire x2="1440" y1="3072" y2="3136" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1440" y="880" name="SYMBOL(16:0)" orien="R180" />
        <instance x="1760" y="1248" name="XLXI_30" orien="R0" />
        <instance x="1760" y="1584" name="XLXI_31" orien="R0" />
        <instance x="1760" y="1904" name="XLXI_32" orien="R0" />
        <instance x="1760" y="2224" name="XLXI_33" orien="R0" />
        <instance x="1760" y="2864" name="XLXI_34" orien="R0" />
        <instance x="1760" y="3200" name="XLXI_35" orien="R0" />
        <instance x="1760" y="2528" name="XLXI_36" orien="R0" />
        <branch name="NIBBLE(6:0)">
            <wire x2="2656" y1="928" y2="1056" x1="2656" />
            <wire x2="2656" y1="1056" y2="1392" x1="2656" />
            <wire x2="2656" y1="1392" y2="1712" x1="2656" />
            <wire x2="2656" y1="1712" y2="2032" x1="2656" />
            <wire x2="2656" y1="2032" y2="2368" x1="2656" />
            <wire x2="2656" y1="2368" y2="2672" x1="2656" />
            <wire x2="2656" y1="2672" y2="3008" x1="2656" />
        </branch>
        <bustap x2="1536" y1="1184" y2="1184" x1="1440" />
        <branch name="SYMBOL(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1184" type="branch" />
            <wire x2="1648" y1="1184" y2="1184" x1="1536" />
            <wire x2="1760" y1="1184" y2="1184" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1120" y2="1120" x1="1440" />
        <branch name="SYMBOL(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1120" type="branch" />
            <wire x2="1648" y1="1120" y2="1120" x1="1536" />
            <wire x2="1760" y1="1120" y2="1120" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1056" y2="1056" x1="1440" />
        <branch name="SYMBOL(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1056" type="branch" />
            <wire x2="1648" y1="1056" y2="1056" x1="1536" />
            <wire x2="1760" y1="1056" y2="1056" x1="1648" />
        </branch>
        <bustap x2="1536" y1="992" y2="992" x1="1440" />
        <branch name="SYMBOL(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="992" type="branch" />
            <wire x2="1648" y1="992" y2="992" x1="1536" />
            <wire x2="1760" y1="992" y2="992" x1="1648" />
        </branch>
        <bustap x2="1536" y1="928" y2="928" x1="1440" />
        <branch name="SYMBOL(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="928" type="branch" />
            <wire x2="1648" y1="928" y2="928" x1="1536" />
            <wire x2="1760" y1="928" y2="928" x1="1648" />
        </branch>
        <bustap x2="2560" y1="1056" y2="1056" x1="2656" />
        <branch name="NIBBLE(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1056" type="branch" />
            <wire x2="2288" y1="1056" y2="1056" x1="2016" />
            <wire x2="2560" y1="1056" y2="1056" x1="2288" />
        </branch>
        <bustap x2="1536" y1="1520" y2="1520" x1="1440" />
        <branch name="SYMBOL(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1520" type="branch" />
            <wire x2="1648" y1="1520" y2="1520" x1="1536" />
            <wire x2="1760" y1="1520" y2="1520" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1456" y2="1456" x1="1440" />
        <branch name="SYMBOL(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1456" type="branch" />
            <wire x2="1648" y1="1456" y2="1456" x1="1536" />
            <wire x2="1760" y1="1456" y2="1456" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1392" y2="1392" x1="1440" />
        <branch name="SYMBOL(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1392" type="branch" />
            <wire x2="1648" y1="1392" y2="1392" x1="1536" />
            <wire x2="1760" y1="1392" y2="1392" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1328" y2="1328" x1="1440" />
        <branch name="SYMBOL(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1328" type="branch" />
            <wire x2="1648" y1="1328" y2="1328" x1="1536" />
            <wire x2="1760" y1="1328" y2="1328" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1264" y2="1264" x1="1440" />
        <branch name="SYMBOL(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1264" type="branch" />
            <wire x2="1648" y1="1264" y2="1264" x1="1536" />
            <wire x2="1760" y1="1264" y2="1264" x1="1648" />
        </branch>
        <bustap x2="2560" y1="1392" y2="1392" x1="2656" />
        <branch name="NIBBLE(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1392" type="branch" />
            <wire x2="2288" y1="1392" y2="1392" x1="2016" />
            <wire x2="2560" y1="1392" y2="1392" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2656" y="928" name="NIBBLE(6:0)" orien="R0" />
        <bustap x2="1536" y1="1840" y2="1840" x1="1440" />
        <branch name="SYMBOL(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1840" type="branch" />
            <wire x2="1648" y1="1840" y2="1840" x1="1536" />
            <wire x2="1760" y1="1840" y2="1840" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1776" y2="1776" x1="1440" />
        <branch name="SYMBOL(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1776" type="branch" />
            <wire x2="1648" y1="1776" y2="1776" x1="1536" />
            <wire x2="1760" y1="1776" y2="1776" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1712" y2="1712" x1="1440" />
        <branch name="SYMBOL(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1712" type="branch" />
            <wire x2="1648" y1="1712" y2="1712" x1="1536" />
            <wire x2="1760" y1="1712" y2="1712" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1648" y2="1648" x1="1440" />
        <branch name="SYMBOL(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1648" type="branch" />
            <wire x2="1648" y1="1648" y2="1648" x1="1536" />
            <wire x2="1760" y1="1648" y2="1648" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1584" y2="1584" x1="1440" />
        <branch name="SYMBOL(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1584" type="branch" />
            <wire x2="1648" y1="1584" y2="1584" x1="1536" />
            <wire x2="1760" y1="1584" y2="1584" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2160" y2="2160" x1="1440" />
        <branch name="SYMBOL(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2160" type="branch" />
            <wire x2="1648" y1="2160" y2="2160" x1="1536" />
            <wire x2="1760" y1="2160" y2="2160" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2096" y2="2096" x1="1440" />
        <branch name="SYMBOL(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2096" type="branch" />
            <wire x2="1648" y1="2096" y2="2096" x1="1536" />
            <wire x2="1760" y1="2096" y2="2096" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2032" y2="2032" x1="1440" />
        <branch name="SYMBOL(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2032" type="branch" />
            <wire x2="1648" y1="2032" y2="2032" x1="1536" />
            <wire x2="1760" y1="2032" y2="2032" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1968" y2="1968" x1="1440" />
        <branch name="SYMBOL(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1968" type="branch" />
            <wire x2="1648" y1="1968" y2="1968" x1="1536" />
            <wire x2="1760" y1="1968" y2="1968" x1="1648" />
        </branch>
        <bustap x2="1536" y1="1904" y2="1904" x1="1440" />
        <branch name="SYMBOL(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1904" type="branch" />
            <wire x2="1648" y1="1904" y2="1904" x1="1536" />
            <wire x2="1760" y1="1904" y2="1904" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2464" y2="2464" x1="1440" />
        <branch name="SYMBOL(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2464" type="branch" />
            <wire x2="1648" y1="2464" y2="2464" x1="1536" />
            <wire x2="1760" y1="2464" y2="2464" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2400" y2="2400" x1="1440" />
        <branch name="SYMBOL(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2400" type="branch" />
            <wire x2="1648" y1="2400" y2="2400" x1="1536" />
            <wire x2="1760" y1="2400" y2="2400" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2336" y2="2336" x1="1440" />
        <branch name="SYMBOL(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2336" type="branch" />
            <wire x2="1648" y1="2336" y2="2336" x1="1536" />
            <wire x2="1760" y1="2336" y2="2336" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2272" y2="2272" x1="1440" />
        <branch name="SYMBOL(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2272" type="branch" />
            <wire x2="1648" y1="2272" y2="2272" x1="1536" />
            <wire x2="1760" y1="2272" y2="2272" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2800" y2="2800" x1="1440" />
        <branch name="SYMBOL(16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2800" type="branch" />
            <wire x2="1648" y1="2800" y2="2800" x1="1536" />
            <wire x2="1760" y1="2800" y2="2800" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2736" y2="2736" x1="1440" />
        <branch name="SYMBOL(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2736" type="branch" />
            <wire x2="1648" y1="2736" y2="2736" x1="1536" />
            <wire x2="1760" y1="2736" y2="2736" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2672" y2="2672" x1="1440" />
        <branch name="SYMBOL(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2672" type="branch" />
            <wire x2="1648" y1="2672" y2="2672" x1="1536" />
            <wire x2="1760" y1="2672" y2="2672" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2608" y2="2608" x1="1440" />
        <branch name="SYMBOL(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2608" type="branch" />
            <wire x2="1648" y1="2608" y2="2608" x1="1536" />
            <wire x2="1760" y1="2608" y2="2608" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2544" y2="2544" x1="1440" />
        <branch name="SYMBOL(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2544" type="branch" />
            <wire x2="1648" y1="2544" y2="2544" x1="1536" />
            <wire x2="1760" y1="2544" y2="2544" x1="1648" />
        </branch>
        <bustap x2="1536" y1="3136" y2="3136" x1="1440" />
        <branch name="SYMBOL(16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="3136" type="branch" />
            <wire x2="1648" y1="3136" y2="3136" x1="1536" />
            <wire x2="1760" y1="3136" y2="3136" x1="1648" />
        </branch>
        <bustap x2="1536" y1="3072" y2="3072" x1="1440" />
        <branch name="SYMBOL(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="3072" type="branch" />
            <wire x2="1648" y1="3072" y2="3072" x1="1536" />
            <wire x2="1760" y1="3072" y2="3072" x1="1648" />
        </branch>
        <bustap x2="1536" y1="3008" y2="3008" x1="1440" />
        <branch name="SYMBOL(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="3008" type="branch" />
            <wire x2="1648" y1="3008" y2="3008" x1="1536" />
            <wire x2="1760" y1="3008" y2="3008" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2944" y2="2944" x1="1440" />
        <branch name="SYMBOL(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2944" type="branch" />
            <wire x2="1648" y1="2944" y2="2944" x1="1536" />
            <wire x2="1760" y1="2944" y2="2944" x1="1648" />
        </branch>
        <bustap x2="1536" y1="2880" y2="2880" x1="1440" />
        <branch name="SYMBOL(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2880" type="branch" />
            <wire x2="1648" y1="2880" y2="2880" x1="1536" />
            <wire x2="1760" y1="2880" y2="2880" x1="1648" />
        </branch>
        <bustap x2="2560" y1="3008" y2="3008" x1="2656" />
        <branch name="NIBBLE(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="3008" type="branch" />
            <wire x2="2288" y1="3008" y2="3008" x1="2016" />
            <wire x2="2560" y1="3008" y2="3008" x1="2288" />
        </branch>
        <bustap x2="2560" y1="2672" y2="2672" x1="2656" />
        <branch name="NIBBLE(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="2672" type="branch" />
            <wire x2="2288" y1="2672" y2="2672" x1="2016" />
            <wire x2="2560" y1="2672" y2="2672" x1="2288" />
        </branch>
        <bustap x2="2560" y1="2368" y2="2368" x1="2656" />
        <branch name="NIBBLE(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="2368" type="branch" />
            <wire x2="2288" y1="2368" y2="2368" x1="2016" />
            <wire x2="2560" y1="2368" y2="2368" x1="2288" />
        </branch>
        <bustap x2="2560" y1="2032" y2="2032" x1="2656" />
        <branch name="NIBBLE(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="2032" type="branch" />
            <wire x2="2288" y1="2032" y2="2032" x1="2016" />
            <wire x2="2560" y1="2032" y2="2032" x1="2288" />
        </branch>
        <bustap x2="2560" y1="1712" y2="1712" x1="2656" />
        <branch name="NIBBLE(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1712" type="branch" />
            <wire x2="2288" y1="1712" y2="1712" x1="2016" />
            <wire x2="2560" y1="1712" y2="1712" x1="2288" />
        </branch>
    </sheet>
</drawing>