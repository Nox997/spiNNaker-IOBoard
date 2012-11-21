<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DATA_IN(8:0)" />
        <signal name="DATA_IN_AV" />
        <signal name="DATA_IN(8)" />
        <signal name="DATA_IN(7)" />
        <signal name="DATA_IN(6)" />
        <signal name="DATA_IN(5)" />
        <signal name="DATA_IN(4)" />
        <signal name="DATA_IN(3)" />
        <signal name="DATA_IN(2)" />
        <signal name="DATA_IN(1)" />
        <signal name="DATA_IN(0)" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_43" />
        <signal name="DATA_OUT(3)" />
        <signal name="DATA_OUT(0)" />
        <signal name="XLXN_55(16:0)" />
        <signal name="XLXN_55(16)" />
        <signal name="XLXN_55(15)" />
        <signal name="XLXN_55(14)" />
        <signal name="XLXN_55(13)" />
        <signal name="XLXN_55(12)" />
        <signal name="XLXN_55(11)" />
        <signal name="XLXN_55(10)" />
        <signal name="XLXN_55(9)" />
        <signal name="XLXN_55(8)" />
        <signal name="XLXN_55(7)" />
        <signal name="XLXN_55(6)" />
        <signal name="XLXN_55(5)" />
        <signal name="XLXN_55(4)" />
        <signal name="XLXN_55(3)" />
        <signal name="XLXN_55(2)" />
        <signal name="XLXN_55(1)" />
        <signal name="XLXN_55(0)" />
        <signal name="XLXN_79(6:0)" />
        <signal name="DATA_IN_BSY" />
        <signal name="XLXN_104" />
        <signal name="SPIN_LINK_OUT_ACK" />
        <signal name="XLXN_118" />
        <signal name="XLXN_183" />
        <signal name="XLXN_184" />
        <signal name="XLXN_56" />
        <signal name="XLXN_148" />
        <signal name="XLXN_200" />
        <signal name="XLXN_203" />
        <signal name="SPIN_LINK_OUT(6:0)" />
        <signal name="XLXN_228" />
        <signal name="XLXN_229" />
        <signal name="XLXN_230" />
        <signal name="XLXN_231" />
        <signal name="XLXN_232" />
        <signal name="XLXN_233" />
        <signal name="XLXN_234" />
        <signal name="SPIN_LINK_OUT(6)" />
        <signal name="SPIN_LINK_OUT(5)" />
        <signal name="SPIN_LINK_OUT(4)" />
        <signal name="SPIN_LINK_OUT(3)" />
        <signal name="SPIN_LINK_OUT(2)" />
        <signal name="SPIN_LINK_OUT(1)" />
        <signal name="SPIN_LINK_OUT(0)" />
        <signal name="XLXN_79(6)" />
        <signal name="XLXN_79(5)" />
        <signal name="XLXN_79(4)" />
        <signal name="XLXN_79(3)" />
        <signal name="XLXN_79(2)" />
        <signal name="XLXN_79(1)" />
        <signal name="XLXN_79(0)" />
        <signal name="DATA_O_AV" />
        <signal name="DATA_OUT(1)" />
        <signal name="DATA_OUT(2)" />
        <signal name="DATA_OUT(8:0)" />
        <signal name="XLXN_258" />
        <signal name="XLXN_268" />
        <signal name="XLXN_289" />
        <signal name="XLXN_290" />
        <signal name="XLXN_161" />
        <signal name="XLXN_298" />
        <port polarity="Input" name="DATA_IN(8:0)" />
        <port polarity="Input" name="DATA_IN_AV" />
        <port polarity="Output" name="DATA_IN_BSY" />
        <port polarity="Input" name="SPIN_LINK_OUT_ACK" />
        <port polarity="Output" name="SPIN_LINK_OUT(6:0)" />
        <port polarity="Output" name="DATA_O_AV" />
        <port polarity="Output" name="DATA_OUT(8:0)" />
        <blockdef name="fdd4">
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
        <blockdef name="fdd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="m2_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="92" y1="-32" y2="-32" x1="208" />
            <line x2="208" y1="-152" y2="-32" x1="208" />
            <line x2="96" y1="-96" y2="-96" x1="144" />
            <line x2="144" y1="-136" y2="-96" x1="144" />
            <line x2="96" y1="-128" y2="-256" x1="96" />
            <line x2="96" y1="-160" y2="-128" x1="256" />
            <line x2="256" y1="-224" y2="-160" x1="256" />
            <line x2="256" y1="-256" y2="-224" x1="96" />
            <line x2="256" y1="-192" y2="-192" x1="320" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <blockdef name="d4_16e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-1152" height="1088" />
            <line x2="320" y1="-1088" y2="-1088" x1="384" />
            <line x2="320" y1="-1024" y2="-1024" x1="384" />
            <line x2="320" y1="-960" y2="-960" x1="384" />
            <line x2="320" y1="-896" y2="-896" x1="384" />
            <line x2="320" y1="-832" y2="-832" x1="384" />
            <line x2="320" y1="-768" y2="-768" x1="384" />
            <line x2="320" y1="-704" y2="-704" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-896" y2="-896" x1="0" />
            <line x2="64" y1="-960" y2="-960" x1="0" />
            <line x2="64" y1="-1024" y2="-1024" x1="0" />
            <line x2="64" y1="-1088" y2="-1088" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="Symbol_encoder">
            <timestamp>2012-8-5T21:7:19</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="toggler">
            <timestamp>2012-8-4T17:32:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
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
        <blockdef name="or9">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-64" y2="-272" x1="48" />
            <line x2="48" y1="-576" y2="-368" x1="48" />
            <arc ex="112" ey="-368" sx="192" sy="-320" r="88" cx="116" cy="-280" />
            <line x2="48" y1="-272" y2="-272" x1="112" />
            <arc ex="192" ey="-320" sx="112" sy="-272" r="88" cx="116" cy="-360" />
            <line x2="48" y1="-368" y2="-368" x1="112" />
            <line x2="192" y1="-320" y2="-320" x1="256" />
            <arc ex="48" ey="-368" sx="48" sy="-272" r="56" cx="16" cy="-320" />
            <line x2="48" y1="-576" y2="-576" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
        </blockdef>
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
        <blockdef name="ldc">
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
        <block symbolname="fdd4" name="XLXI_3">
            <blockpin signalname="DATA_IN_AV" name="C" />
            <blockpin signalname="DATA_IN(0)" name="D0" />
            <blockpin signalname="DATA_IN(1)" name="D1" />
            <blockpin signalname="DATA_IN(2)" name="D2" />
            <blockpin signalname="DATA_IN(3)" name="D3" />
            <blockpin signalname="XLXN_27" name="Q0" />
            <blockpin signalname="XLXN_29" name="Q1" />
            <blockpin signalname="XLXN_31" name="Q2" />
            <blockpin signalname="XLXN_33" name="Q3" />
        </block>
        <block symbolname="fdd4" name="XLXI_4">
            <blockpin signalname="DATA_IN_AV" name="C" />
            <blockpin signalname="DATA_IN(4)" name="D0" />
            <blockpin signalname="DATA_IN(5)" name="D1" />
            <blockpin signalname="DATA_IN(6)" name="D2" />
            <blockpin signalname="DATA_IN(7)" name="D3" />
            <blockpin signalname="XLXN_28" name="Q0" />
            <blockpin signalname="XLXN_30" name="Q1" />
            <blockpin signalname="XLXN_32" name="Q2" />
            <blockpin signalname="XLXN_34" name="Q3" />
        </block>
        <block symbolname="fdd" name="XLXI_5">
            <blockpin signalname="DATA_IN_AV" name="C" />
            <blockpin signalname="DATA_IN(8)" name="D" />
            <blockpin signalname="XLXN_56" name="Q" />
        </block>
        <block symbolname="m2_1e" name="XLXI_6">
            <blockpin signalname="XLXN_27" name="D0" />
            <blockpin signalname="XLXN_28" name="D1" />
            <blockpin signalname="XLXN_43" name="E" />
            <blockpin signalname="XLXN_200" name="S0" />
            <blockpin signalname="DATA_OUT(0)" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_7">
            <blockpin signalname="XLXN_29" name="D0" />
            <blockpin signalname="XLXN_30" name="D1" />
            <blockpin signalname="XLXN_43" name="E" />
            <blockpin signalname="XLXN_200" name="S0" />
            <blockpin signalname="DATA_OUT(1)" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_8">
            <blockpin signalname="XLXN_31" name="D0" />
            <blockpin signalname="XLXN_32" name="D1" />
            <blockpin signalname="XLXN_43" name="E" />
            <blockpin signalname="XLXN_200" name="S0" />
            <blockpin signalname="DATA_OUT(2)" name="O" />
        </block>
        <block symbolname="m2_1e" name="XLXI_9">
            <blockpin signalname="XLXN_33" name="D0" />
            <blockpin signalname="XLXN_34" name="D1" />
            <blockpin signalname="XLXN_43" name="E" />
            <blockpin signalname="XLXN_200" name="S0" />
            <blockpin signalname="DATA_OUT(3)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="XLXN_56" name="I" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="d4_16e" name="XLXI_11">
            <blockpin signalname="DATA_OUT(0)" name="A0" />
            <blockpin signalname="DATA_OUT(1)" name="A1" />
            <blockpin signalname="DATA_OUT(2)" name="A2" />
            <blockpin signalname="DATA_OUT(3)" name="A3" />
            <blockpin signalname="XLXN_43" name="E" />
            <blockpin signalname="XLXN_55(0)" name="D0" />
            <blockpin signalname="XLXN_55(1)" name="D1" />
            <blockpin signalname="XLXN_55(10)" name="D10" />
            <blockpin signalname="XLXN_55(11)" name="D11" />
            <blockpin signalname="XLXN_55(12)" name="D12" />
            <blockpin signalname="XLXN_55(13)" name="D13" />
            <blockpin signalname="XLXN_55(14)" name="D14" />
            <blockpin signalname="XLXN_55(15)" name="D15" />
            <blockpin signalname="XLXN_55(2)" name="D2" />
            <blockpin signalname="XLXN_55(3)" name="D3" />
            <blockpin signalname="XLXN_55(4)" name="D4" />
            <blockpin signalname="XLXN_55(5)" name="D5" />
            <blockpin signalname="XLXN_55(6)" name="D6" />
            <blockpin signalname="XLXN_55(7)" name="D7" />
            <blockpin signalname="XLXN_55(8)" name="D8" />
            <blockpin signalname="XLXN_55(9)" name="D9" />
        </block>
        <block symbolname="Symbol_encoder" name="XLXI_12">
            <blockpin signalname="XLXN_55(16:0)" name="SYMBOL(16:0)" />
            <blockpin signalname="XLXN_79(6:0)" name="NIBBLE(6:0)" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="XLXN_56" name="I" />
            <blockpin signalname="XLXN_55(16)" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_21">
            <blockpin signalname="XLXN_203" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="DATA_IN_AV" name="D" />
            <blockpin signalname="XLXN_104" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_23">
            <blockpin signalname="XLXN_104" name="I0" />
            <blockpin signalname="DATA_IN_AV" name="I1" />
            <blockpin signalname="DATA_IN_BSY" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_28">
            <blockpin signalname="XLXN_290" name="C" />
            <blockpin signalname="XLXN_56" name="CLR" />
            <blockpin signalname="XLXN_148" name="D" />
            <blockpin signalname="XLXN_200" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="XLXN_200" name="I" />
            <blockpin signalname="XLXN_148" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_24">
            <blockpin signalname="XLXN_298" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT_ACK" name="D" />
            <blockpin signalname="XLXN_118" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_25">
            <blockpin signalname="XLXN_118" name="I0" />
            <blockpin signalname="SPIN_LINK_OUT_ACK" name="I1" />
            <blockpin signalname="XLXN_290" name="O" />
        </block>
        <block symbolname="or9" name="XLXI_37">
            <blockpin signalname="XLXN_55(8)" name="I0" />
            <blockpin signalname="XLXN_55(7)" name="I1" />
            <blockpin signalname="XLXN_55(6)" name="I2" />
            <blockpin signalname="XLXN_55(5)" name="I3" />
            <blockpin signalname="XLXN_55(4)" name="I4" />
            <blockpin signalname="XLXN_55(3)" name="I5" />
            <blockpin signalname="XLXN_55(2)" name="I6" />
            <blockpin signalname="XLXN_55(1)" name="I7" />
            <blockpin signalname="XLXN_55(0)" name="I8" />
            <blockpin signalname="XLXN_184" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_38">
            <blockpin signalname="XLXN_55(16)" name="I0" />
            <blockpin signalname="XLXN_55(15)" name="I1" />
            <blockpin signalname="XLXN_55(14)" name="I2" />
            <blockpin signalname="XLXN_55(13)" name="I3" />
            <blockpin signalname="XLXN_55(12)" name="I4" />
            <blockpin signalname="XLXN_55(11)" name="I5" />
            <blockpin signalname="XLXN_55(10)" name="I6" />
            <blockpin signalname="XLXN_55(9)" name="I7" />
            <blockpin signalname="XLXN_183" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_39">
            <blockpin signalname="XLXN_183" name="I0" />
            <blockpin signalname="XLXN_184" name="I1" />
            <blockpin signalname="XLXN_258" name="O" />
        </block>
        <block symbolname="toggler" name="XLXI_14">
            <blockpin signalname="XLXN_229" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(1)" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_15">
            <blockpin signalname="XLXN_228" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(0)" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_47">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(0)" name="D" />
            <blockpin signalname="XLXN_228" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_48">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(1)" name="D" />
            <blockpin signalname="XLXN_229" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_49">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(2)" name="D" />
            <blockpin signalname="XLXN_230" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_50">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(3)" name="D" />
            <blockpin signalname="XLXN_231" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_51">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(4)" name="D" />
            <blockpin signalname="XLXN_232" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_52">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(5)" name="D" />
            <blockpin signalname="XLXN_233" name="Q" />
        </block>
        <block symbolname="ldc" name="XLXI_53">
            <blockpin signalname="XLXN_268" name="G" />
            <blockpin signalname="XLXN_290" name="CLR" />
            <blockpin signalname="XLXN_79(6)" name="D" />
            <blockpin signalname="XLXN_234" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_16">
            <blockpin signalname="XLXN_230" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(2)" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_17">
            <blockpin signalname="XLXN_231" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(3)" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_18">
            <blockpin signalname="XLXN_232" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(4)" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_19">
            <blockpin signalname="XLXN_233" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(5)" name="Q" />
        </block>
        <block symbolname="toggler" name="XLXI_20">
            <blockpin signalname="XLXN_234" name="CLK" />
            <blockpin name="CLR" />
            <blockpin signalname="SPIN_LINK_OUT(6)" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_60">
            <blockpin signalname="DATA_IN_BSY" name="I0" />
            <blockpin signalname="XLXN_258" name="I1" />
            <blockpin signalname="XLXN_268" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_64">
            <blockpin signalname="XLXN_289" name="I" />
            <blockpin signalname="XLXN_298" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_65">
            <blockpin signalname="XLXN_290" name="I" />
            <blockpin signalname="XLXN_289" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_33">
            <blockpin signalname="XLXN_56" name="I0" />
            <blockpin signalname="XLXN_200" name="I1" />
            <blockpin signalname="XLXN_161" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_32">
            <blockpin signalname="XLXN_290" name="I0" />
            <blockpin signalname="XLXN_161" name="I1" />
            <blockpin signalname="XLXN_203" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <iomarker fontsize="28" x="272" y="400" name="DATA_IN(8:0)" orien="R180" />
        <branch name="DATA_IN(8:0)">
            <wire x2="608" y1="400" y2="400" x1="272" />
            <wire x2="608" y1="400" y2="432" x1="608" />
            <wire x2="608" y1="432" y2="496" x1="608" />
            <wire x2="608" y1="496" y2="560" x1="608" />
            <wire x2="608" y1="560" y2="624" x1="608" />
            <wire x2="608" y1="624" y2="976" x1="608" />
            <wire x2="608" y1="976" y2="1040" x1="608" />
            <wire x2="608" y1="1040" y2="1104" x1="608" />
            <wire x2="608" y1="1104" y2="1168" x1="608" />
            <wire x2="608" y1="1168" y2="1536" x1="608" />
        </branch>
        <branch name="DATA_IN_AV">
            <wire x2="464" y1="752" y2="752" x1="304" />
            <wire x2="960" y1="752" y2="752" x1="464" />
            <wire x2="464" y1="752" y2="1296" x1="464" />
            <wire x2="960" y1="1296" y2="1296" x1="464" />
            <wire x2="464" y1="1296" y2="1664" x1="464" />
            <wire x2="960" y1="1664" y2="1664" x1="464" />
            <wire x2="464" y1="1664" y2="2000" x1="464" />
            <wire x2="464" y1="2000" y2="2224" x1="464" />
            <wire x2="560" y1="2224" y2="2224" x1="464" />
            <wire x2="992" y1="2000" y2="2000" x1="464" />
        </branch>
        <instance x="960" y="880" name="XLXI_3" orien="R0" />
        <instance x="960" y="1424" name="XLXI_4" orien="R0" />
        <instance x="960" y="1792" name="XLXI_5" orien="R0" />
        <bustap x2="704" y1="1536" y2="1536" x1="608" />
        <branch name="DATA_IN(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1536" type="branch" />
            <wire x2="832" y1="1536" y2="1536" x1="704" />
            <wire x2="960" y1="1536" y2="1536" x1="832" />
        </branch>
        <bustap x2="704" y1="1168" y2="1168" x1="608" />
        <branch name="DATA_IN(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1168" type="branch" />
            <wire x2="832" y1="1168" y2="1168" x1="704" />
            <wire x2="960" y1="1168" y2="1168" x1="832" />
        </branch>
        <bustap x2="704" y1="1104" y2="1104" x1="608" />
        <branch name="DATA_IN(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1104" type="branch" />
            <wire x2="832" y1="1104" y2="1104" x1="704" />
            <wire x2="960" y1="1104" y2="1104" x1="832" />
        </branch>
        <bustap x2="704" y1="1040" y2="1040" x1="608" />
        <branch name="DATA_IN(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1040" type="branch" />
            <wire x2="832" y1="1040" y2="1040" x1="704" />
            <wire x2="960" y1="1040" y2="1040" x1="832" />
        </branch>
        <bustap x2="704" y1="976" y2="976" x1="608" />
        <branch name="DATA_IN(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="976" type="branch" />
            <wire x2="832" y1="976" y2="976" x1="704" />
            <wire x2="960" y1="976" y2="976" x1="832" />
        </branch>
        <bustap x2="704" y1="624" y2="624" x1="608" />
        <branch name="DATA_IN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="624" type="branch" />
            <wire x2="832" y1="624" y2="624" x1="704" />
            <wire x2="960" y1="624" y2="624" x1="832" />
        </branch>
        <bustap x2="704" y1="560" y2="560" x1="608" />
        <branch name="DATA_IN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="560" type="branch" />
            <wire x2="832" y1="560" y2="560" x1="704" />
            <wire x2="960" y1="560" y2="560" x1="832" />
        </branch>
        <bustap x2="704" y1="496" y2="496" x1="608" />
        <branch name="DATA_IN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="496" type="branch" />
            <wire x2="832" y1="496" y2="496" x1="704" />
            <wire x2="960" y1="496" y2="496" x1="832" />
        </branch>
        <bustap x2="704" y1="432" y2="432" x1="608" />
        <branch name="DATA_IN(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="832" y="432" type="branch" />
            <wire x2="832" y1="432" y2="432" x1="704" />
            <wire x2="960" y1="432" y2="432" x1="832" />
        </branch>
        <iomarker fontsize="28" x="304" y="752" name="DATA_IN_AV" orien="R180" />
        <branch name="XLXN_27">
            <wire x2="1824" y1="432" y2="432" x1="1344" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1584" y1="976" y2="976" x1="1344" />
            <wire x2="1584" y1="496" y2="976" x1="1584" />
            <wire x2="1824" y1="496" y2="496" x1="1584" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1568" y1="560" y2="560" x1="1344" />
            <wire x2="1568" y1="560" y2="1024" x1="1568" />
            <wire x2="1824" y1="1024" y2="1024" x1="1568" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1552" y1="624" y2="624" x1="1344" />
            <wire x2="1552" y1="624" y2="1328" x1="1552" />
            <wire x2="1824" y1="1328" y2="1328" x1="1552" />
        </branch>
        <instance x="1424" y="1568" name="XLXI_10" orien="R0" />
        <instance x="1824" y="656" name="XLXI_6" orien="R0" />
        <instance x="1824" y="944" name="XLXI_7" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1360" y1="496" y2="496" x1="1344" />
            <wire x2="1360" y1="496" y2="720" x1="1360" />
            <wire x2="1824" y1="720" y2="720" x1="1360" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1360" y1="1040" y2="1040" x1="1344" />
            <wire x2="1824" y1="784" y2="784" x1="1360" />
            <wire x2="1360" y1="784" y2="1040" x1="1360" />
        </branch>
        <instance x="1824" y="1248" name="XLXI_8" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1360" y1="1104" y2="1104" x1="1344" />
            <wire x2="1824" y1="1088" y2="1088" x1="1360" />
            <wire x2="1360" y1="1088" y2="1104" x1="1360" />
        </branch>
        <instance x="1824" y="1552" name="XLXI_9" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="1360" y1="1168" y2="1168" x1="1344" />
            <wire x2="1360" y1="1168" y2="1392" x1="1360" />
            <wire x2="1824" y1="1392" y2="1392" x1="1360" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1712" y1="1536" y2="1536" x1="1648" />
            <wire x2="1824" y1="1536" y2="1536" x1="1712" />
            <wire x2="2160" y1="1536" y2="1536" x1="1824" />
            <wire x2="1824" y1="624" y2="624" x1="1712" />
            <wire x2="1712" y1="624" y2="912" x1="1712" />
            <wire x2="1824" y1="912" y2="912" x1="1712" />
            <wire x2="1712" y1="912" y2="1216" x1="1712" />
            <wire x2="1824" y1="1216" y2="1216" x1="1712" />
            <wire x2="1712" y1="1216" y2="1536" x1="1712" />
            <wire x2="1824" y1="1520" y2="1536" x1="1824" />
            <wire x2="2160" y1="1520" y2="1536" x1="2160" />
            <wire x2="2400" y1="1520" y2="1520" x1="2160" />
        </branch>
        <instance x="2400" y="1648" name="XLXI_11" orien="R0" />
        <branch name="DATA_OUT(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3448" y="384" type="branch" />
            <wire x2="2272" y1="1360" y2="1360" x1="2144" />
            <wire x2="2272" y1="752" y2="1360" x1="2272" />
            <wire x2="2336" y1="752" y2="752" x1="2272" />
            <wire x2="2400" y1="752" y2="752" x1="2336" />
            <wire x2="2336" y1="384" y2="752" x1="2336" />
            <wire x2="3456" y1="384" y2="384" x1="2336" />
            <wire x2="3776" y1="384" y2="384" x1="3456" />
        </branch>
        <branch name="DATA_OUT(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="128" type="branch" />
            <wire x2="2272" y1="464" y2="464" x1="2144" />
            <wire x2="2272" y1="464" y2="560" x1="2272" />
            <wire x2="2400" y1="560" y2="560" x1="2272" />
            <wire x2="2384" y1="464" y2="464" x1="2272" />
            <wire x2="2384" y1="128" y2="464" x1="2384" />
            <wire x2="3456" y1="128" y2="128" x1="2384" />
            <wire x2="3776" y1="128" y2="128" x1="3456" />
        </branch>
        <branch name="XLXN_55(16:0)">
            <wire x2="3184" y1="528" y2="560" x1="3184" />
            <wire x2="3184" y1="560" y2="624" x1="3184" />
            <wire x2="3184" y1="624" y2="688" x1="3184" />
            <wire x2="3184" y1="688" y2="752" x1="3184" />
            <wire x2="3184" y1="752" y2="816" x1="3184" />
            <wire x2="3184" y1="816" y2="880" x1="3184" />
            <wire x2="3184" y1="880" y2="944" x1="3184" />
            <wire x2="3184" y1="944" y2="1008" x1="3184" />
            <wire x2="3184" y1="1008" y2="1072" x1="3184" />
            <wire x2="3184" y1="1072" y2="1136" x1="3184" />
            <wire x2="3184" y1="1136" y2="1200" x1="3184" />
            <wire x2="3184" y1="1200" y2="1264" x1="3184" />
            <wire x2="3184" y1="1264" y2="1328" x1="3184" />
            <wire x2="3184" y1="1328" y2="1392" x1="3184" />
            <wire x2="3184" y1="1392" y2="1456" x1="3184" />
            <wire x2="3184" y1="1456" y2="1520" x1="3184" />
            <wire x2="3184" y1="1520" y2="1808" x1="3184" />
            <wire x2="3216" y1="528" y2="528" x1="3184" />
            <wire x2="3296" y1="528" y2="528" x1="3216" />
            <wire x2="3216" y1="528" y2="720" x1="3216" />
            <wire x2="3216" y1="720" y2="784" x1="3216" />
            <wire x2="3216" y1="784" y2="848" x1="3216" />
            <wire x2="3216" y1="848" y2="912" x1="3216" />
            <wire x2="3216" y1="912" y2="976" x1="3216" />
            <wire x2="3216" y1="976" y2="1040" x1="3216" />
            <wire x2="3216" y1="1040" y2="1104" x1="3216" />
            <wire x2="3216" y1="1104" y2="1168" x1="3216" />
            <wire x2="3216" y1="1168" y2="1232" x1="3216" />
            <wire x2="3216" y1="1232" y2="1360" x1="3216" />
            <wire x2="3216" y1="1360" y2="1424" x1="3216" />
            <wire x2="3216" y1="1424" y2="1488" x1="3216" />
            <wire x2="3216" y1="1488" y2="1552" x1="3216" />
            <wire x2="3216" y1="1552" y2="1616" x1="3216" />
            <wire x2="3216" y1="1616" y2="1680" x1="3216" />
            <wire x2="3216" y1="1680" y2="1744" x1="3216" />
            <wire x2="3216" y1="1744" y2="1808" x1="3216" />
        </branch>
        <instance x="1872" y="1840" name="XLXI_13" orien="R0" />
        <bustap x2="3088" y1="1808" y2="1808" x1="3184" />
        <branch name="XLXN_55(16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1808" type="branch" />
            <wire x2="2592" y1="1808" y2="1808" x1="2096" />
            <wire x2="3088" y1="1808" y2="1808" x1="2592" />
        </branch>
        <bustap x2="3088" y1="1520" y2="1520" x1="3184" />
        <branch name="XLXN_55(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1520" type="branch" />
            <wire x2="3088" y1="1520" y2="1520" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1456" y2="1456" x1="3184" />
        <branch name="XLXN_55(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1456" type="branch" />
            <wire x2="3088" y1="1456" y2="1456" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1392" y2="1392" x1="3184" />
        <branch name="XLXN_55(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1392" type="branch" />
            <wire x2="3088" y1="1392" y2="1392" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1328" y2="1328" x1="3184" />
        <branch name="XLXN_55(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1328" type="branch" />
            <wire x2="3088" y1="1328" y2="1328" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1264" y2="1264" x1="3184" />
        <branch name="XLXN_55(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1264" type="branch" />
            <wire x2="3088" y1="1264" y2="1264" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1200" y2="1200" x1="3184" />
        <branch name="XLXN_55(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1200" type="branch" />
            <wire x2="3088" y1="1200" y2="1200" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1136" y2="1136" x1="3184" />
        <branch name="XLXN_55(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1136" type="branch" />
            <wire x2="3088" y1="1136" y2="1136" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1072" y2="1072" x1="3184" />
        <branch name="XLXN_55(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1072" type="branch" />
            <wire x2="3088" y1="1072" y2="1072" x1="2784" />
        </branch>
        <bustap x2="3088" y1="1008" y2="1008" x1="3184" />
        <branch name="XLXN_55(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="1008" type="branch" />
            <wire x2="3088" y1="1008" y2="1008" x1="2784" />
        </branch>
        <bustap x2="3088" y1="944" y2="944" x1="3184" />
        <branch name="XLXN_55(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="944" type="branch" />
            <wire x2="3088" y1="944" y2="944" x1="2784" />
        </branch>
        <bustap x2="3088" y1="880" y2="880" x1="3184" />
        <branch name="XLXN_55(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="880" type="branch" />
            <wire x2="3088" y1="880" y2="880" x1="2784" />
        </branch>
        <bustap x2="3088" y1="816" y2="816" x1="3184" />
        <branch name="XLXN_55(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="816" type="branch" />
            <wire x2="3088" y1="816" y2="816" x1="2784" />
        </branch>
        <bustap x2="3088" y1="752" y2="752" x1="3184" />
        <branch name="XLXN_55(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="752" type="branch" />
            <wire x2="3088" y1="752" y2="752" x1="2784" />
        </branch>
        <bustap x2="3088" y1="688" y2="688" x1="3184" />
        <branch name="XLXN_55(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="688" type="branch" />
            <wire x2="3088" y1="688" y2="688" x1="2784" />
        </branch>
        <bustap x2="3088" y1="624" y2="624" x1="3184" />
        <branch name="XLXN_55(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="624" type="branch" />
            <wire x2="3088" y1="624" y2="624" x1="2784" />
        </branch>
        <bustap x2="3088" y1="560" y2="560" x1="3184" />
        <branch name="XLXN_55(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2936" y="560" type="branch" />
            <wire x2="3088" y1="560" y2="560" x1="2784" />
        </branch>
        <instance x="3296" y="560" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_79(6:0)">
            <wire x2="3840" y1="528" y2="528" x1="3728" />
            <wire x2="3840" y1="528" y2="544" x1="3840" />
            <wire x2="3840" y1="544" y2="976" x1="3840" />
            <wire x2="3840" y1="976" y2="1392" x1="3840" />
            <wire x2="3840" y1="1392" y2="1872" x1="3840" />
            <wire x2="3840" y1="1872" y2="2304" x1="3840" />
            <wire x2="3840" y1="2304" y2="2752" x1="3840" />
            <wire x2="3840" y1="2752" y2="3216" x1="3840" />
            <wire x2="3840" y1="3216" y2="3232" x1="3840" />
        </branch>
        <instance x="560" y="2480" name="XLXI_21" orien="R0" />
        <instance x="992" y="2128" name="XLXI_23" orien="R0" />
        <branch name="XLXN_104">
            <wire x2="960" y1="2224" y2="2224" x1="944" />
            <wire x2="992" y1="2064" y2="2064" x1="960" />
            <wire x2="960" y1="2064" y2="2224" x1="960" />
        </branch>
        <instance x="1680" y="2352" name="XLXI_28" orien="R0" />
        <instance x="1984" y="1952" name="XLXI_29" orien="M0" />
        <instance x="960" y="3024" name="XLXI_25" orien="R0" />
        <branch name="XLXN_118">
            <wire x2="944" y1="3104" y2="3104" x1="928" />
            <wire x2="960" y1="2960" y2="2960" x1="944" />
            <wire x2="944" y1="2960" y2="3104" x1="944" />
        </branch>
        <iomarker fontsize="28" x="416" y="2896" name="SPIN_LINK_OUT_ACK" orien="R180" />
        <instance x="3584" y="1776" name="XLXI_39" orien="R90" />
        <instance x="3344" y="1296" name="XLXI_37" orien="R0" />
        <instance x="3344" y="1872" name="XLXI_38" orien="R0" />
        <bustap x2="3312" y1="1808" y2="1808" x1="3216" />
        <branch name="XLXN_55(16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1808" type="branch" />
            <wire x2="3328" y1="1808" y2="1808" x1="3312" />
            <wire x2="3344" y1="1808" y2="1808" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1744" y2="1744" x1="3216" />
        <branch name="XLXN_55(15)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1744" type="branch" />
            <wire x2="3328" y1="1744" y2="1744" x1="3312" />
            <wire x2="3344" y1="1744" y2="1744" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1680" y2="1680" x1="3216" />
        <branch name="XLXN_55(14)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1680" type="branch" />
            <wire x2="3328" y1="1680" y2="1680" x1="3312" />
            <wire x2="3344" y1="1680" y2="1680" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1616" y2="1616" x1="3216" />
        <branch name="XLXN_55(13)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1616" type="branch" />
            <wire x2="3328" y1="1616" y2="1616" x1="3312" />
            <wire x2="3344" y1="1616" y2="1616" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1552" y2="1552" x1="3216" />
        <branch name="XLXN_55(12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1552" type="branch" />
            <wire x2="3328" y1="1552" y2="1552" x1="3312" />
            <wire x2="3344" y1="1552" y2="1552" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1488" y2="1488" x1="3216" />
        <branch name="XLXN_55(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1488" type="branch" />
            <wire x2="3328" y1="1488" y2="1488" x1="3312" />
            <wire x2="3344" y1="1488" y2="1488" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1424" y2="1424" x1="3216" />
        <branch name="XLXN_55(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1424" type="branch" />
            <wire x2="3328" y1="1424" y2="1424" x1="3312" />
            <wire x2="3344" y1="1424" y2="1424" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1360" y2="1360" x1="3216" />
        <branch name="XLXN_55(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1360" type="branch" />
            <wire x2="3328" y1="1360" y2="1360" x1="3312" />
            <wire x2="3344" y1="1360" y2="1360" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1232" y2="1232" x1="3216" />
        <branch name="XLXN_55(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1232" type="branch" />
            <wire x2="3328" y1="1232" y2="1232" x1="3312" />
            <wire x2="3344" y1="1232" y2="1232" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1168" y2="1168" x1="3216" />
        <branch name="XLXN_55(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1168" type="branch" />
            <wire x2="3328" y1="1168" y2="1168" x1="3312" />
            <wire x2="3344" y1="1168" y2="1168" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1104" y2="1104" x1="3216" />
        <branch name="XLXN_55(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1104" type="branch" />
            <wire x2="3328" y1="1104" y2="1104" x1="3312" />
            <wire x2="3344" y1="1104" y2="1104" x1="3328" />
        </branch>
        <bustap x2="3312" y1="1040" y2="1040" x1="3216" />
        <branch name="XLXN_55(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="1040" type="branch" />
            <wire x2="3328" y1="1040" y2="1040" x1="3312" />
            <wire x2="3344" y1="1040" y2="1040" x1="3328" />
        </branch>
        <bustap x2="3312" y1="976" y2="976" x1="3216" />
        <branch name="XLXN_55(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="976" type="branch" />
            <wire x2="3328" y1="976" y2="976" x1="3312" />
            <wire x2="3344" y1="976" y2="976" x1="3328" />
        </branch>
        <bustap x2="3312" y1="912" y2="912" x1="3216" />
        <branch name="XLXN_55(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="912" type="branch" />
            <wire x2="3328" y1="912" y2="912" x1="3312" />
            <wire x2="3344" y1="912" y2="912" x1="3328" />
        </branch>
        <bustap x2="3312" y1="848" y2="848" x1="3216" />
        <branch name="XLXN_55(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="848" type="branch" />
            <wire x2="3328" y1="848" y2="848" x1="3312" />
            <wire x2="3344" y1="848" y2="848" x1="3328" />
        </branch>
        <bustap x2="3312" y1="784" y2="784" x1="3216" />
        <branch name="XLXN_55(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="784" type="branch" />
            <wire x2="3328" y1="784" y2="784" x1="3312" />
            <wire x2="3344" y1="784" y2="784" x1="3328" />
        </branch>
        <bustap x2="3312" y1="720" y2="720" x1="3216" />
        <branch name="XLXN_55(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="720" type="branch" />
            <wire x2="3328" y1="720" y2="720" x1="3312" />
            <wire x2="3344" y1="720" y2="720" x1="3328" />
        </branch>
        <branch name="XLXN_183">
            <wire x2="3648" y1="1584" y2="1584" x1="3600" />
            <wire x2="3648" y1="1584" y2="1776" x1="3648" />
        </branch>
        <branch name="XLXN_184">
            <wire x2="3712" y1="976" y2="976" x1="3600" />
            <wire x2="3712" y1="976" y2="1776" x1="3712" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1392" y1="1536" y2="1536" x1="1344" />
            <wire x2="1424" y1="1536" y2="1536" x1="1392" />
            <wire x2="1392" y1="1536" y2="1808" x1="1392" />
            <wire x2="1872" y1="1808" y2="1808" x1="1392" />
            <wire x2="1392" y1="1808" y2="2320" x1="1392" />
            <wire x2="1488" y1="2320" y2="2320" x1="1392" />
            <wire x2="1680" y1="2320" y2="2320" x1="1488" />
            <wire x2="1488" y1="2320" y2="2672" x1="1488" />
            <wire x2="1488" y1="2672" y2="2672" x1="1424" />
        </branch>
        <branch name="XLXN_148">
            <wire x2="1664" y1="1920" y2="2096" x1="1664" />
            <wire x2="1680" y1="2096" y2="2096" x1="1664" />
            <wire x2="1760" y1="1920" y2="1920" x1="1664" />
        </branch>
        <branch name="XLXN_200">
            <wire x2="2160" y1="2736" y2="2736" x1="1424" />
            <wire x2="1824" y1="560" y2="560" x1="1808" />
            <wire x2="1808" y1="560" y2="848" x1="1808" />
            <wire x2="1824" y1="848" y2="848" x1="1808" />
            <wire x2="1808" y1="848" y2="1152" x1="1808" />
            <wire x2="1824" y1="1152" y2="1152" x1="1808" />
            <wire x2="1808" y1="1152" y2="1456" x1="1808" />
            <wire x2="1824" y1="1456" y2="1456" x1="1808" />
            <wire x2="1808" y1="1456" y2="1600" x1="1808" />
            <wire x2="2160" y1="1600" y2="1600" x1="1808" />
            <wire x2="2160" y1="1600" y2="1920" x1="2160" />
            <wire x2="2160" y1="1920" y2="2096" x1="2160" />
            <wire x2="2160" y1="2096" y2="2736" x1="2160" />
            <wire x2="2160" y1="1920" y2="1920" x1="1984" />
            <wire x2="2160" y1="2096" y2="2096" x1="2064" />
        </branch>
        <branch name="SPIN_LINK_OUT(6:0)">
            <wire x2="5344" y1="400" y2="400" x1="5120" />
            <wire x2="5120" y1="400" y2="544" x1="5120" />
            <wire x2="5120" y1="544" y2="976" x1="5120" />
            <wire x2="5120" y1="976" y2="1392" x1="5120" />
            <wire x2="5120" y1="1392" y2="1872" x1="5120" />
            <wire x2="5120" y1="1872" y2="2304" x1="5120" />
            <wire x2="5120" y1="2304" y2="2752" x1="5120" />
            <wire x2="5120" y1="2752" y2="3216" x1="5120" />
            <wire x2="5120" y1="3216" y2="3360" x1="5120" />
        </branch>
        <iomarker fontsize="28" x="5344" y="400" name="SPIN_LINK_OUT(6:0)" orien="R0" />
        <instance x="4144" y="3008" name="XLXI_52" orien="R0" />
        <instance x="4144" y="3472" name="XLXI_53" orien="R0" />
        <instance x="4112" y="800" name="XLXI_47" orien="R0" />
        <instance x="4128" y="1232" name="XLXI_48" orien="R0" />
        <instance x="4128" y="1648" name="XLXI_49" orien="R0" />
        <instance x="4128" y="2128" name="XLXI_50" orien="R0" />
        <instance x="4128" y="2560" name="XLXI_51" orien="R0" />
        <branch name="XLXN_228">
            <wire x2="4528" y1="544" y2="544" x1="4496" />
        </branch>
        <branch name="XLXN_229">
            <wire x2="4544" y1="976" y2="976" x1="4512" />
        </branch>
        <instance x="4528" y="640" name="XLXI_15" orien="R0">
        </instance>
        <instance x="4544" y="1072" name="XLXI_14" orien="R0">
        </instance>
        <instance x="4560" y="1488" name="XLXI_16" orien="R0">
        </instance>
        <instance x="4576" y="1968" name="XLXI_17" orien="R0">
        </instance>
        <instance x="4592" y="2400" name="XLXI_18" orien="R0">
        </instance>
        <instance x="4608" y="3312" name="XLXI_20" orien="R0">
        </instance>
        <instance x="4608" y="2848" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_230">
            <wire x2="4560" y1="1392" y2="1392" x1="4512" />
        </branch>
        <branch name="XLXN_231">
            <wire x2="4576" y1="1872" y2="1872" x1="4512" />
        </branch>
        <branch name="XLXN_232">
            <wire x2="4592" y1="2304" y2="2304" x1="4512" />
        </branch>
        <branch name="XLXN_233">
            <wire x2="4608" y1="2752" y2="2752" x1="4528" />
        </branch>
        <branch name="XLXN_234">
            <wire x2="4608" y1="3216" y2="3216" x1="4528" />
        </branch>
        <bustap x2="5024" y1="3216" y2="3216" x1="5120" />
        <branch name="SPIN_LINK_OUT(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="3216" type="branch" />
            <wire x2="5008" y1="3216" y2="3216" x1="4992" />
            <wire x2="5024" y1="3216" y2="3216" x1="5008" />
        </branch>
        <bustap x2="5024" y1="2752" y2="2752" x1="5120" />
        <branch name="SPIN_LINK_OUT(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="5008" y="2752" type="branch" />
            <wire x2="5008" y1="2752" y2="2752" x1="4992" />
            <wire x2="5024" y1="2752" y2="2752" x1="5008" />
        </branch>
        <bustap x2="5024" y1="2304" y2="2304" x1="5120" />
        <branch name="SPIN_LINK_OUT(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="5000" y="2304" type="branch" />
            <wire x2="5024" y1="2304" y2="2304" x1="4976" />
        </branch>
        <bustap x2="5024" y1="1872" y2="1872" x1="5120" />
        <branch name="SPIN_LINK_OUT(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4992" y="1872" type="branch" />
            <wire x2="4992" y1="1872" y2="1872" x1="4960" />
            <wire x2="5024" y1="1872" y2="1872" x1="4992" />
        </branch>
        <bustap x2="5024" y1="1392" y2="1392" x1="5120" />
        <branch name="SPIN_LINK_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4984" y="1392" type="branch" />
            <wire x2="5024" y1="1392" y2="1392" x1="4944" />
        </branch>
        <bustap x2="5024" y1="976" y2="976" x1="5120" />
        <branch name="SPIN_LINK_OUT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4976" y="976" type="branch" />
            <wire x2="4976" y1="976" y2="976" x1="4928" />
            <wire x2="5024" y1="976" y2="976" x1="4976" />
        </branch>
        <bustap x2="5024" y1="544" y2="544" x1="5120" />
        <branch name="SPIN_LINK_OUT(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4968" y="544" type="branch" />
            <wire x2="5024" y1="544" y2="544" x1="4912" />
        </branch>
        <bustap x2="3936" y1="3216" y2="3216" x1="3840" />
        <branch name="XLXN_79(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4040" y="3216" type="branch" />
            <wire x2="4144" y1="3216" y2="3216" x1="3936" />
        </branch>
        <bustap x2="3936" y1="2752" y2="2752" x1="3840" />
        <branch name="XLXN_79(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4040" y="2752" type="branch" />
            <wire x2="4144" y1="2752" y2="2752" x1="3936" />
        </branch>
        <bustap x2="3936" y1="2304" y2="2304" x1="3840" />
        <branch name="XLXN_79(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="2304" type="branch" />
            <wire x2="4032" y1="2304" y2="2304" x1="3936" />
            <wire x2="4128" y1="2304" y2="2304" x1="4032" />
        </branch>
        <bustap x2="3936" y1="1872" y2="1872" x1="3840" />
        <branch name="XLXN_79(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="1872" type="branch" />
            <wire x2="4032" y1="1872" y2="1872" x1="3936" />
            <wire x2="4128" y1="1872" y2="1872" x1="4032" />
        </branch>
        <bustap x2="3936" y1="1392" y2="1392" x1="3840" />
        <branch name="XLXN_79(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="1392" type="branch" />
            <wire x2="4032" y1="1392" y2="1392" x1="3936" />
            <wire x2="4128" y1="1392" y2="1392" x1="4032" />
        </branch>
        <bustap x2="3936" y1="976" y2="976" x1="3840" />
        <branch name="XLXN_79(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4032" y="976" type="branch" />
            <wire x2="4032" y1="976" y2="976" x1="3936" />
            <wire x2="4128" y1="976" y2="976" x1="4032" />
        </branch>
        <bustap x2="3936" y1="544" y2="544" x1="3840" />
        <branch name="XLXN_79(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4024" y="544" type="branch" />
            <wire x2="4112" y1="544" y2="544" x1="3936" />
        </branch>
        <branch name="SPIN_LINK_OUT_ACK">
            <wire x2="512" y1="2896" y2="2896" x1="416" />
            <wire x2="960" y1="2896" y2="2896" x1="512" />
            <wire x2="512" y1="2896" y2="3104" x1="512" />
            <wire x2="544" y1="3104" y2="3104" x1="512" />
        </branch>
        <instance x="544" y="3360" name="XLXI_24" orien="R0" />
        <branch name="DATA_OUT(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3456" y="224" type="branch" />
            <wire x2="2240" y1="752" y2="752" x1="2144" />
            <wire x2="2240" y1="624" y2="752" x1="2240" />
            <wire x2="2352" y1="624" y2="624" x1="2240" />
            <wire x2="2400" y1="624" y2="624" x1="2352" />
            <wire x2="2352" y1="224" y2="624" x1="2352" />
            <wire x2="3456" y1="224" y2="224" x1="2352" />
            <wire x2="3776" y1="224" y2="224" x1="3456" />
        </branch>
        <branch name="DATA_OUT(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3448" y="304" type="branch" />
            <wire x2="2256" y1="1056" y2="1056" x1="2144" />
            <wire x2="2256" y1="688" y2="1056" x1="2256" />
            <wire x2="2304" y1="688" y2="688" x1="2256" />
            <wire x2="2400" y1="688" y2="688" x1="2304" />
            <wire x2="2304" y1="304" y2="688" x1="2304" />
            <wire x2="3456" y1="304" y2="304" x1="2304" />
            <wire x2="3776" y1="304" y2="304" x1="3456" />
        </branch>
        <bustap x2="3776" y1="384" y2="384" x1="3872" />
        <bustap x2="3776" y1="304" y2="304" x1="3872" />
        <bustap x2="3776" y1="224" y2="224" x1="3872" />
        <branch name="DATA_OUT(8:0)">
            <wire x2="3872" y1="80" y2="128" x1="3872" />
            <wire x2="3872" y1="128" y2="176" x1="3872" />
            <wire x2="4064" y1="176" y2="176" x1="3872" />
            <wire x2="4064" y1="176" y2="192" x1="4064" />
            <wire x2="3872" y1="176" y2="224" x1="3872" />
            <wire x2="3872" y1="224" y2="304" x1="3872" />
            <wire x2="3872" y1="304" y2="384" x1="3872" />
        </branch>
        <bustap x2="3776" y1="128" y2="128" x1="3872" />
        <iomarker fontsize="28" x="4064" y="192" name="DATA_OUT(8:0)" orien="R0" />
        <branch name="XLXN_258">
            <wire x2="3680" y1="2032" y2="2288" x1="3680" />
        </branch>
        <instance x="3552" y="2288" name="XLXI_60" orien="R90" />
        <branch name="DATA_IN_BSY">
            <wire x2="1264" y1="2032" y2="2032" x1="1248" />
            <wire x2="1264" y1="2032" y2="2384" x1="1264" />
            <wire x2="1264" y1="2384" y2="2528" x1="1264" />
            <wire x2="1808" y1="2528" y2="2528" x1="1264" />
            <wire x2="1312" y1="2384" y2="2384" x1="1264" />
            <wire x2="3616" y1="1968" y2="1968" x1="1312" />
            <wire x2="3616" y1="1968" y2="2288" x1="3616" />
            <wire x2="1312" y1="1968" y2="2384" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1808" y="2528" name="DATA_IN_BSY" orien="R0" />
        <branch name="DATA_O_AV">
            <wire x2="2048" y1="3200" y2="3200" x1="1952" />
            <wire x2="2064" y1="3136" y2="3136" x1="2048" />
            <wire x2="2048" y1="3136" y2="3200" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="1952" y="3200" name="DATA_O_AV" orien="R180" />
        <instance x="1200" y="3472" name="XLXI_65" orien="M0" />
        <branch name="XLXN_289">
            <wire x2="976" y1="3440" y2="3440" x1="688" />
        </branch>
        <instance x="688" y="3472" name="XLXI_64" orien="M0" />
        <branch name="XLXN_203">
            <wire x2="560" y1="2352" y2="2352" x1="480" />
            <wire x2="480" y1="2352" y2="2736" x1="480" />
            <wire x2="832" y1="2736" y2="2736" x1="480" />
        </branch>
        <branch name="XLXN_161">
            <wire x2="1168" y1="2704" y2="2704" x1="1088" />
        </branch>
        <instance x="1424" y="2608" name="XLXI_33" orien="R180" />
        <instance x="1088" y="2832" name="XLXI_32" orien="M0" />
        <branch name="XLXN_298">
            <wire x2="448" y1="3232" y2="3440" x1="448" />
            <wire x2="464" y1="3440" y2="3440" x1="448" />
            <wire x2="544" y1="3232" y2="3232" x1="448" />
        </branch>
        <branch name="XLXN_290">
            <wire x2="1232" y1="2768" y2="2768" x1="1088" />
            <wire x2="1232" y1="2768" y2="2928" x1="1232" />
            <wire x2="1664" y1="2928" y2="2928" x1="1232" />
            <wire x2="2672" y1="2928" y2="2928" x1="1664" />
            <wire x2="1232" y1="2928" y2="3440" x1="1232" />
            <wire x2="1232" y1="3440" y2="3440" x1="1200" />
            <wire x2="1232" y1="2928" y2="2928" x1="1216" />
            <wire x2="1680" y1="2224" y2="2224" x1="1664" />
            <wire x2="1664" y1="2224" y2="2928" x1="1664" />
            <wire x2="4048" y1="2640" y2="2640" x1="2672" />
            <wire x2="4048" y1="2640" y2="2976" x1="4048" />
            <wire x2="4144" y1="2976" y2="2976" x1="4048" />
            <wire x2="4048" y1="2976" y2="3440" x1="4048" />
            <wire x2="4144" y1="3440" y2="3440" x1="4048" />
            <wire x2="2672" y1="2640" y2="2928" x1="2672" />
            <wire x2="4112" y1="768" y2="768" x1="4048" />
            <wire x2="4048" y1="768" y2="1200" x1="4048" />
            <wire x2="4128" y1="1200" y2="1200" x1="4048" />
            <wire x2="4048" y1="1200" y2="1616" x1="4048" />
            <wire x2="4128" y1="1616" y2="1616" x1="4048" />
            <wire x2="4048" y1="1616" y2="2096" x1="4048" />
            <wire x2="4128" y1="2096" y2="2096" x1="4048" />
            <wire x2="4048" y1="2096" y2="2528" x1="4048" />
            <wire x2="4128" y1="2528" y2="2528" x1="4048" />
            <wire x2="4048" y1="2528" y2="2640" x1="4048" />
        </branch>
        <branch name="XLXN_268">
            <wire x2="3648" y1="2544" y2="2592" x1="3648" />
            <wire x2="3776" y1="2592" y2="2592" x1="3648" />
            <wire x2="3904" y1="2208" y2="2208" x1="3776" />
            <wire x2="3776" y1="2208" y2="2592" x1="3776" />
            <wire x2="4096" y1="2000" y2="2000" x1="3904" />
            <wire x2="4128" y1="2000" y2="2000" x1="4096" />
            <wire x2="4096" y1="2000" y2="2432" x1="4096" />
            <wire x2="4128" y1="2432" y2="2432" x1="4096" />
            <wire x2="4096" y1="2432" y2="2880" x1="4096" />
            <wire x2="4144" y1="2880" y2="2880" x1="4096" />
            <wire x2="4096" y1="2880" y2="3344" x1="4096" />
            <wire x2="4144" y1="3344" y2="3344" x1="4096" />
            <wire x2="3904" y1="2000" y2="2208" x1="3904" />
            <wire x2="4112" y1="672" y2="672" x1="4096" />
            <wire x2="4096" y1="672" y2="1104" x1="4096" />
            <wire x2="4128" y1="1104" y2="1104" x1="4096" />
            <wire x2="4096" y1="1104" y2="1520" x1="4096" />
            <wire x2="4128" y1="1520" y2="1520" x1="4096" />
            <wire x2="4096" y1="1520" y2="2000" x1="4096" />
        </branch>
    </sheet>
</drawing>