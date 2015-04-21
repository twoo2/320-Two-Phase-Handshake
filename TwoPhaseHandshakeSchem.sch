<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Req" />
        <signal name="XLXN_4" />
        <signal name="SysASync" />
        <signal name="XLXN_7" />
        <signal name="SysBSync" />
        <signal name="XLXN_5" />
        <signal name="SysBxorOUT" />
        <signal name="Ack" />
        <signal name="clkA" />
        <signal name="XLXN_13" />
        <signal name="SysAxorOUT" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="SysBDFOUT" />
        <signal name="XLXN_20" />
        <signal name="SysBSyncOUT" />
        <signal name="DataA" />
        <signal name="ReqA" />
        <signal name="SysADFOUT" />
        <signal name="SysASyncOUT" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="DataB" />
        <signal name="clkB" />
        <signal name="AckA" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="ReqB" />
        <port polarity="Output" name="Req" />
        <port polarity="Output" name="Ack" />
        <port polarity="Input" name="clkA" />
        <port polarity="Input" name="DataA" />
        <port polarity="Input" name="ReqA" />
        <port polarity="Output" name="DataB" />
        <port polarity="Input" name="clkB" />
        <port polarity="Output" name="AckA" />
        <port polarity="Output" name="ReqB" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
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
        <block symbolname="fde" name="SysBEN">
            <blockpin signalname="clkB" name="C" />
            <blockpin signalname="ReqB" name="CE" />
            <blockpin signalname="DataA" name="D" />
            <blockpin signalname="DataB" name="Q" />
        </block>
        <block symbolname="fd" name="SysASync2">
            <blockpin signalname="clkA" name="C" />
            <blockpin signalname="Ack" name="D" />
            <blockpin signalname="SysASync" name="Q" />
        </block>
        <block symbolname="fd" name="SysASync1">
            <blockpin signalname="clkA" name="C" />
            <blockpin signalname="SysASync" name="D" />
            <blockpin signalname="SysASyncOUT" name="Q" />
        </block>
        <block symbolname="fd" name="SysADF2">
            <blockpin signalname="clkA" name="C" />
            <blockpin signalname="SysAxorOUT" name="D" />
            <blockpin signalname="Req" name="Q" />
        </block>
        <block symbolname="fd" name="SysADF1">
            <blockpin signalname="clkA" name="C" />
            <blockpin signalname="SysASyncOUT" name="D" />
            <blockpin signalname="SysADFOUT" name="Q" />
        </block>
        <block symbolname="xor2" name="AckAxor">
            <blockpin signalname="SysASyncOUT" name="I0" />
            <blockpin signalname="SysADFOUT" name="I1" />
            <blockpin signalname="AckA" name="O" />
        </block>
        <block symbolname="xor2" name="SysAxor">
            <blockpin signalname="Req" name="I0" />
            <blockpin signalname="ReqA" name="I1" />
            <blockpin signalname="SysAxorOUT" name="O" />
        </block>
        <block symbolname="xor2" name="ReqBxor">
            <blockpin signalname="SysBSyncOUT" name="I0" />
            <blockpin signalname="SysBDFOUT" name="I1" />
            <blockpin signalname="ReqB" name="O" />
        </block>
        <block symbolname="fd" name="SysBDF2">
            <blockpin signalname="clkB" name="C" />
            <blockpin signalname="SysBxorOUT" name="D" />
            <blockpin signalname="Ack" name="Q" />
        </block>
        <block symbolname="fd" name="SysBSync1">
            <blockpin signalname="clkB" name="C" />
            <blockpin signalname="Req" name="D" />
            <blockpin signalname="SysBSync" name="Q" />
        </block>
        <block symbolname="fd" name="SysBSync2">
            <blockpin signalname="clkB" name="C" />
            <blockpin signalname="SysBSync" name="D" />
            <blockpin signalname="SysBSyncOUT" name="Q" />
        </block>
        <block symbolname="fd" name="SysBDF1">
            <blockpin signalname="clkB" name="C" />
            <blockpin signalname="SysBSyncOUT" name="D" />
            <blockpin signalname="SysBDFOUT" name="Q" />
        </block>
        <block symbolname="xor2" name="SysBxor">
            <blockpin signalname="Ack" name="I0" />
            <blockpin signalname="ReqB" name="I1" />
            <blockpin signalname="SysBxorOUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Req">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1456" type="branch" />
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1445" type="branch" />
            <wire x2="1008" y1="1216" y2="1456" x1="1008" />
            <wire x2="1008" y1="1456" y2="1664" x1="1008" />
            <wire x2="1792" y1="1664" y2="1664" x1="1008" />
            <wire x2="1792" y1="1424" y2="1424" x1="1776" />
            <wire x2="1824" y1="1424" y2="1424" x1="1792" />
            <wire x2="1792" y1="1424" y2="1445" x1="1792" />
            <wire x2="1792" y1="1445" y2="1664" x1="1792" />
            <wire x2="1792" y1="1168" y2="1424" x1="1792" />
        </branch>
        <instance x="1920" y="896" name="SysBEN" orien="R0" />
        <instance x="1776" y="2192" name="SysASync2" orien="M0" />
        <instance x="1312" y="2192" name="SysASync1" orien="M0" />
        <instance x="1392" y="1680" name="SysADF2" orien="R0" />
        <branch name="SysASync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1354" y="1936" type="branch" />
            <wire x2="1354" y1="1936" y2="1936" x1="1312" />
            <wire x2="1392" y1="1936" y2="1936" x1="1354" />
        </branch>
        <instance x="864" y="2192" name="SysADF1" orien="M0" />
        <instance x="416" y="2064" name="AckAxor" orien="M0" />
        <instance x="2208" y="2192" name="SysBDF2" orien="M0" />
        <instance x="1824" y="1680" name="SysBSync1" orien="R0" />
        <instance x="2320" y="1680" name="SysBSync2" orien="R0" />
        <branch name="SysBSync">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2264" y="1424" type="branch" />
            <wire x2="2264" y1="1424" y2="1424" x1="2208" />
            <wire x2="2320" y1="1424" y2="1424" x1="2264" />
        </branch>
        <instance x="2784" y="1680" name="SysBDF1" orien="R0" />
        <instance x="3200" y="1552" name="ReqBxor" orien="R0" />
        <instance x="2576" y="2032" name="SysBxor" orien="M0" />
        <branch name="SysBxorOUT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2255" y="1936" type="branch" />
            <wire x2="2255" y1="1936" y2="1936" x1="2208" />
            <wire x2="2320" y1="1936" y2="1936" x1="2255" />
        </branch>
        <branch name="Ack">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1936" type="branch" />
            <wire x2="1808" y1="1936" y2="1936" x1="1776" />
            <wire x2="1824" y1="1936" y2="1936" x1="1808" />
            <wire x2="1808" y1="1936" y2="2192" x1="1808" />
            <wire x2="2640" y1="2192" y2="2192" x1="1808" />
            <wire x2="1808" y1="1760" y2="1920" x1="1808" />
            <wire x2="1808" y1="1920" y2="1936" x1="1808" />
            <wire x2="2640" y1="1968" y2="1968" x1="2576" />
            <wire x2="2640" y1="1968" y2="2192" x1="2640" />
        </branch>
        <branch name="clkA">
            <wire x2="864" y1="2064" y2="2192" x1="864" />
            <wire x2="1328" y1="2192" y2="2192" x1="864" />
            <wire x2="1792" y1="2192" y2="2192" x1="1328" />
            <wire x2="1328" y1="2064" y2="2064" x1="1312" />
            <wire x2="1328" y1="2064" y2="2192" x1="1328" />
            <wire x2="1776" y1="272" y2="272" x1="1328" />
            <wire x2="1328" y1="272" y2="1552" x1="1328" />
            <wire x2="1328" y1="1552" y2="2064" x1="1328" />
            <wire x2="1392" y1="1552" y2="1552" x1="1328" />
            <wire x2="1792" y1="2064" y2="2064" x1="1776" />
            <wire x2="1792" y1="2064" y2="2192" x1="1792" />
        </branch>
        <branch name="SysAxorOUT">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1290" type="branch" />
            <wire x2="1376" y1="1184" y2="1184" x1="1264" />
            <wire x2="1376" y1="1184" y2="1290" x1="1376" />
            <wire x2="1376" y1="1290" y2="1424" x1="1376" />
            <wire x2="1392" y1="1424" y2="1424" x1="1376" />
        </branch>
        <branch name="SysBDFOUT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3187" y="1424" type="branch" />
            <wire x2="3187" y1="1424" y2="1424" x1="3168" />
            <wire x2="3200" y1="1424" y2="1424" x1="3187" />
        </branch>
        <branch name="SysBSyncOUT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2965" y="1680" type="branch" />
            <wire x2="2736" y1="1424" y2="1424" x1="2704" />
            <wire x2="2784" y1="1424" y2="1424" x1="2736" />
            <wire x2="2736" y1="1424" y2="1680" x1="2736" />
            <wire x2="2965" y1="1680" y2="1680" x1="2736" />
            <wire x2="3200" y1="1680" y2="1680" x1="2965" />
            <wire x2="3200" y1="1488" y2="1680" x1="3200" />
        </branch>
        <branch name="DataA">
            <wire x2="1920" y1="640" y2="640" x1="576" />
        </branch>
        <branch name="ReqA">
            <wire x2="624" y1="1392" y2="1392" x1="608" />
            <wire x2="1008" y1="1152" y2="1152" x1="624" />
            <wire x2="624" y1="1152" y2="1392" x1="624" />
        </branch>
        <branch name="SysADFOUT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="466" y="1936" type="branch" />
            <wire x2="466" y1="1936" y2="1936" x1="416" />
            <wire x2="480" y1="1936" y2="1936" x1="466" />
        </branch>
        <branch name="SysASyncOUT">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1956" type="branch" />
            <wire x2="432" y1="2000" y2="2000" x1="416" />
            <wire x2="432" y1="2000" y2="2144" x1="432" />
            <wire x2="912" y1="2144" y2="2144" x1="432" />
            <wire x2="912" y1="1936" y2="1936" x1="864" />
            <wire x2="928" y1="1936" y2="1936" x1="912" />
            <wire x2="912" y1="1936" y2="1956" x1="912" />
            <wire x2="912" y1="1956" y2="2144" x1="912" />
        </branch>
        <branch name="DataB">
            <wire x2="2320" y1="640" y2="640" x1="2304" />
            <wire x2="3392" y1="640" y2="640" x1="2320" />
        </branch>
        <branch name="clkB">
            <wire x2="1824" y1="1552" y2="1552" x1="1808" />
            <wire x2="1808" y1="1552" y2="1648" x1="1808" />
            <wire x2="2288" y1="1648" y2="1648" x1="1808" />
            <wire x2="2288" y1="1648" y2="1696" x1="2288" />
            <wire x2="2288" y1="1696" y2="2064" x1="2288" />
            <wire x2="2752" y1="1696" y2="1696" x1="2288" />
            <wire x2="1920" y1="768" y2="768" x1="1888" />
            <wire x2="1888" y1="768" y2="960" x1="1888" />
            <wire x2="2288" y1="960" y2="960" x1="1888" />
            <wire x2="2512" y1="960" y2="960" x1="2288" />
            <wire x2="2288" y1="960" y2="1552" x1="2288" />
            <wire x2="2320" y1="1552" y2="1552" x1="2288" />
            <wire x2="2288" y1="1552" y2="1648" x1="2288" />
            <wire x2="2224" y1="2064" y2="2064" x1="2208" />
            <wire x2="2288" y1="2064" y2="2064" x1="2224" />
            <wire x2="2512" y1="288" y2="960" x1="2512" />
            <wire x2="2752" y1="1552" y2="1696" x1="2752" />
            <wire x2="2784" y1="1552" y2="1552" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="576" y="640" name="DataA" orien="R180" />
        <iomarker fontsize="28" x="608" y="1392" name="ReqA" orien="R180" />
        <branch name="AckA">
            <wire x2="160" y1="1968" y2="1968" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1968" name="AckA" orien="R180" />
        <iomarker fontsize="28" x="3392" y="640" name="DataB" orien="R0" />
        <iomarker fontsize="28" x="2512" y="288" name="clkB" orien="R270" />
        <iomarker fontsize="28" x="1776" y="272" name="clkA" orien="R0" />
        <instance x="1008" y="1280" name="SysAxor" orien="R0" />
        <iomarker fontsize="28" x="3472" y="2176" name="ReqB" orien="R90" />
        <branch name="ReqB">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2929" y="1904" type="branch" />
            <wire x2="1920" y1="704" y2="704" x1="1856" />
            <wire x2="1856" y1="704" y2="912" x1="1856" />
            <wire x2="3504" y1="912" y2="912" x1="1856" />
            <wire x2="3504" y1="912" y2="1456" x1="3504" />
            <wire x2="3504" y1="1456" y2="1904" x1="3504" />
            <wire x2="2929" y1="1904" y2="1904" x1="2576" />
            <wire x2="3472" y1="1904" y2="1904" x1="2929" />
            <wire x2="3504" y1="1904" y2="1904" x1="3472" />
            <wire x2="3472" y1="1904" y2="2176" x1="3472" />
            <wire x2="3504" y1="1456" y2="1456" x1="3456" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1168" name="Req" orien="R270" />
        <iomarker fontsize="28" x="1808" y="1760" name="Ack" orien="R270" />
    </sheet>
</drawing>