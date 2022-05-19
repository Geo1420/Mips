VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(31:0)
        SIGNAL Clk
        SIGNAL PC(31:0)
        SIGNAL PC(6:2)
        SIGNAL Instr(31:0)
        SIGNAL Instr(15:11)
        SIGNAL Instr(25:21)
        SIGNAL Instr(20:16)
        SIGNAL WrReg(4:0)
        SIGNAL RegDest
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL RdData2(31:0)
        SIGNAL Instr(15:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL MemWr
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL ALU_Out(6:2)
        SIGNAL Instr(31:26)
        SIGNAL Instr(5:0)
        SIGNAL XLXN_1
        SIGNAL Zero
        SIGNAL Branch
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 5 5 13 7 50
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -160 320 168 
            RECTANGLE N 320 116 384 140 
            LINE N 384 128 320 128 
            RECTANGLE N 320 36 384 60 
            LINE N 384 48 320 48 
            RECTANGLE N 320 -28 384 -4 
            LINE N 320 -16 384 -16 
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2021 4 5 19 5 19
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2021 4 5 14 43 8
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2021 4 5 19 5 35
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -140 64 -116 
            LINE N 64 -128 0 -128 
            LINE N 64 -48 0 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2021 4 15 5 23 37
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -416 480 -416 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 64 -448 416 132 
            LINE N 64 -352 0 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2021 4 15 5 45 45
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            LINE N 64 16 0 16 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2021 4 15 15 49 20
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2021 5 5 12 5 28
            LINE N 320 32 384 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2021 5 5 11 18 17
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 64 -320 320 64 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK U_New_Pc PC_Update
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
            PIN Offset(15:0) Instr(15:0)
            PIN Branch Branch
            PIN Zero Zero
        END BLOCK
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
            PIN Y(4:0) WrReg(4:0)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN Clk Clk
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WrReg(4:0) WrReg(4:0)
            PIN WRData(31:0) WrData(31:0)
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN WrEn RegWr
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Wr MemWr
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Clk Clk
            PIN INW0(31:0) INW0(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN INW1(31:0) INW1(31:0)
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) WrData(31:0)
            PIN I0(31:0) ALU_Out(31:0)
            PIN I1(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Branch
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN Zero Zero
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_New_Pc 560 1376 R0
            BEGIN DISPLAY 64 -264 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 560 1776 R0
            BEGIN DISPLAY 112 24 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(31:0)
            WIRE 288 1248 560 1248
            WIRE 288 1248 288 1456
            WIRE 288 1456 288 1744
            WIRE 288 1744 560 1744
            BEGIN DISPLAY 288 1456 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 496 1680 560 1680
        END BRANCH
        IOMARKER 496 1680 Clk R180 28
        BEGIN BRANCH PC(31:0)
            WIRE 944 1504 1056 1504
            WIRE 1056 1504 1056 1520
            WIRE 1056 1520 1056 1680
            WIRE 1056 1680 1056 1808
            WIRE 1056 1808 1056 1968
            WIRE 944 1680 1056 1680
            BEGIN DISPLAY 1056 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1056 1808 1152 1808
        BEGIN BRANCH PC(6:2)
            WIRE 1152 1808 1200 1808
            WIRE 1200 1808 1312 1808
            BEGIN DISPLAY 1200 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1312 1840 R0
            BEGIN DISPLAY 64 -152 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1760 2128 1856 2128
        BEGIN BRANCH Instr(15:11)
            WIRE 1856 2128 1920 2128
            WIRE 1920 2128 1936 2128
            WIRE 1936 2128 2032 2128
            BEGIN DISPLAY 1920 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 2032 2256 R0
            BEGIN DISPLAY 96 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1760 1872 1856 1872
        BUSTAP 1760 1952 1856 1952
        BEGIN BRANCH Instr(25:21)
            WIRE 1856 1872 2192 1872
            WIRE 2192 1872 2480 1872
            WIRE 2480 1872 2576 1872
            BEGIN DISPLAY 2192 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1856 1952 1920 1952
            WIRE 1920 1952 1920 2080
            WIRE 1920 2080 2032 2080
            WIRE 1920 1952 2048 1952
            WIRE 2048 1952 2480 1952
            WIRE 2480 1936 2576 1936
            WIRE 2480 1936 2480 1952
            BEGIN DISPLAY 2048 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2416 2096 2448 2096
            WIRE 2448 2096 2496 2096
            WIRE 2496 2096 2576 2096
            BEGIN DISPLAY 2448 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 1968 2208 1984 2208
            WIRE 1984 2208 2032 2208
            BEGIN DISPLAY 1984 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Regs 2576 2096 R0
            BEGIN DISPLAY 96 -552 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RegWr
            WIRE 2320 1744 2416 1744
            WIRE 2416 1744 2576 1744
            BEGIN DISPLAY 2416 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2400 1680 2480 1680
            WIRE 2480 1680 2576 1680
            BEGIN DISPLAY 2480 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData1(31:0)
            WIRE 3056 1680 3216 1680
            WIRE 3216 1680 3424 1680
            BEGIN DISPLAY 3216 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1696 1808 1760 1808
            WIRE 1760 1808 1760 1872
            WIRE 1760 1872 1760 1904
            WIRE 1760 1904 1760 1952
            WIRE 1760 1952 1760 2032
            WIRE 1760 2032 1760 2128
            WIRE 1760 2128 1760 2224
            WIRE 1760 2224 1760 2304
            WIRE 1760 2304 1760 2480
            WIRE 1760 2480 1760 2496
            WIRE 1760 2496 1760 2800
            WIRE 1760 2800 1760 2944
            WIRE 1760 1424 1760 1808
            BEGIN DISPLAY 1760 2032 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(15:0)
            WIRE 1856 2304 2432 2304
            WIRE 2432 2304 3104 2304
            WIRE 3104 1808 3104 2304
            WIRE 3104 1808 3424 1808
            BEGIN DISPLAY 2432 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 2304 1856 2304
        BEGIN INSTANCE U_DataMem 4096 1792 R0
            BEGIN DISPLAY 80 -332 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH INW0(31:0)
            WIRE 4064 1648 4096 1648
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4064 1712 4096 1712
        END BRANCH
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4544 1648 4592 1648
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 4032 1584 4080 1584
            WIRE 4080 1584 4096 1584
            BEGIN DISPLAY 4080 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3984 1808 4048 1808
            WIRE 4048 1808 4096 1808
            BEGIN DISPLAY 4048 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4592 1648 OUTW0(31:0) R0 28
        IOMARKER 4064 1712 INW1(31:0) R180 28
        IOMARKER 4064 1648 INW0(31:0) R180 28
        BEGIN INSTANCE U_MuxData 4784 2032 R0
            BEGIN DISPLAY 64 -280 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 4544 1936 4624 1936
            WIRE 4624 1936 4784 1936
            BEGIN DISPLAY 4624 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4656 1872 4720 1872
            WIRE 4720 1872 4784 1872
            BEGIN DISPLAY 4720 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 2448 2192 2448 2416
            WIRE 2448 2416 3664 2416
            WIRE 3664 2416 5232 2416
            WIRE 2448 2192 2576 2192
            WIRE 5168 1872 5232 1872
            WIRE 5232 1872 5232 2416
            BEGIN DISPLAY 3664 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3840 1888 3936 1888
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 3936 1888 4000 1888
            WIRE 4000 1888 4016 1888
            WIRE 4016 1872 4016 1888
            WIRE 4016 1872 4096 1872
            BEGIN DISPLAY 4000 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ctrl 2032 2832 R0
            BEGIN DISPLAY 64 -440 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1760 2480 1856 2480
        BEGIN BRANCH Instr(31:26)
            WIRE 1856 2480 1920 2480
            WIRE 1920 2480 2032 2480
            BEGIN DISPLAY 1920 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 2800 1856 2800
        BEGIN BRANCH Instr(5:0)
            WIRE 1856 2800 1920 2800
            WIRE 1920 2800 2032 2800
            BEGIN DISPLAY 1920 2800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2416 2480 2480 2480
            WIRE 2480 2480 2528 2480
            BEGIN DISPLAY 2480 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2416 2544 2464 2544
            WIRE 2464 2544 2528 2544
            BEGIN DISPLAY 2464 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2416 2608 2464 2608
            WIRE 2464 2608 2528 2608
            BEGIN DISPLAY 2464 2608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2416 2672 2464 2672
            WIRE 2464 2672 2528 2672
            BEGIN DISPLAY 2464 2672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2416 2736 2464 2736
            WIRE 2464 2736 2528 2736
            BEGIN DISPLAY 2464 2736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2416 2800 2464 2800
            WIRE 2464 2800 2544 2800
            BEGIN DISPLAY 2464 2800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 3808 1872 3840 1872
            WIRE 3840 1872 3840 1888
            WIRE 3840 1888 3840 1920
            WIRE 3840 1920 3840 2304
            WIRE 3840 2304 4224 2304
            WIRE 4224 2304 4736 2304
            WIRE 4736 2000 4784 2000
            WIRE 4736 2000 4736 2016
            WIRE 4736 2016 4736 2304
            BEGIN DISPLAY 4224 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3232 1936 3312 1936
            WIRE 3312 1936 3424 1936
            BEGIN DISPLAY 3312 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3232 1872 3296 1872
            WIRE 3296 1872 3424 1872
            BEGIN DISPLAY 3296 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3056 1744 3152 1744
            WIRE 3152 1744 3216 1744
            WIRE 3216 1744 3424 1744
            WIRE 3152 1744 3152 2272
            WIRE 3152 2272 3872 2272
            WIRE 3872 1936 4096 1936
            WIRE 3872 1936 3872 2112
            WIRE 3872 2112 3872 2272
            BEGIN DISPLAY 3216 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3424 1968 R0
            BEGIN DISPLAY 32 -360 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Zero
            WIRE 944 1296 1360 1296
            WIRE 1360 1296 3488 1296
            WIRE 3488 1296 3808 1296
            WIRE 3808 1296 3808 1504
            WIRE 3808 1504 3824 1504
            WIRE 3824 1504 3824 1680
            WIRE 3808 1680 3824 1680
            BEGIN DISPLAY 1360 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 944 1360 1072 1360
            WIRE 1072 1360 1232 1360
            BEGIN DISPLAY 1072 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 1424 1664 1424
        BEGIN BRANCH Instr(15:0)
            WIRE 944 1424 1328 1424
            WIRE 1328 1424 1664 1424
            BEGIN DISPLAY 1328 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
