`timescale 1ns / 1ps

module TwoPhaseHandshake(clkA, clkB, DataA, ReqA, Ack, AckA, DataB, Req, ReqB);

    input clkA;
    input clkB;
    input DataA;
    input ReqA;
   output Ack;
   output AckA;
   output DataB;
   output Req;
   output ReqB;
   
   wire SysADFOUT;
   wire SysASync;
   wire SysASyncOUT;
   wire SysAxorOUT;
   wire SysBDFOUT;
   wire SysBSync;
   wire SysBSyncOUT;
   wire SysBxorOUT;
   wire ReqBOUT;
   wire AckOUT;
   wire ReqOUT;
   
   assign Ack = AckOUT;
   assign Req = ReqOUT;
   assign ReqB = ReqBOUT;
	
   XOR2  AckAxor (.I0(SysASyncOUT), .I1(SysADFOUT), .O(AckA));
   XOR2  ReqBxor (.I0(SysBSyncOUT), .I1(SysBDFOUT), .O(ReqBOUT));
   FD #( .INIT(1'b0) ) SysADF1 (.C(clkA), .D(SysASyncOUT), .Q(SysADFOUT));
   FD #( .INIT(1'b0) ) SysADF2 (.C(clkA), .D(SysAxorOUT), .Q(ReqOUT));
   FD #( .INIT(1'b0) ) SysASync1 (.C(clkA), .D(SysASync), .Q(SysASyncOUT));
   FD #( .INIT(1'b0) ) SysASync2 (.C(clkA), .D(AckOUT), .Q(SysASync));
   XOR2  SysAxor (.I0(ReqOUT), .I1(ReqA), .O(SysAxorOUT));
   FD #( .INIT(1'b0) ) SysBDF1 (.C(clkB), .D(SysBSyncOUT), .Q(SysBDFOUT));
   FD #( .INIT(1'b0) ) SysBDF2 (.C(clkB), .D(SysBxorOUT), .Q(AckOUT));
   FDE #( .INIT(1'b0) ) SysBEN (.C(clkB), .CE(ReqBOUT), .D(DataA), .Q(DataB));
   FD #( .INIT(1'b0) ) SysBSync1 (.C(clkB), .D(ReqOUT), .Q(SysBSync));
   FD #( .INIT(1'b0) ) SysBSync2 (.C(clkB), .D(SysBSync), .Q(SysBSyncOUT));
   XOR2  SysBxor (.I0(AckOUT), .I1(ReqBOUT), .O(SysBxorOUT));
	
endmodule

