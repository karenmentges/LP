{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,437) ([34848,37171,512,0,0,0,0,16382,18707,34848,37171,0,0,0,0,0,14466,2323,0,0,0,256,8192,13192,145,0,1,34848,37171,65024,4927,105,0,32,16382,18739,0,64,65024,4991,73,112,0,0,0,34848,37171,33280,4920,8201,13192,145,14466,2323,34848,37171,33280,4920,8201,13192,145,14466,2323,32,0,0,0,0,0,0,0,0,0,0,40960,7,0,120,0,2016,0,32512,0,61440,7,8192,13192,145,0,208,0,0,33280,4920,8201,13192,145,16382,22803,65504,53555,4,2048,0,0,13,0,0,0,0,65024,5055,8265,13192,145,0,8,34848,37171,33280,4920,9,0,0,0,0,0,0,0,53248,49152,127,0,0,32,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","\"&&\"","\"||\"","\"!\"","\"==\"","\">\"","\">=\"","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","let","\"=\"","in","'{'","'}'","','","'.'","%eof"]
        bit_start = st * 36
        bit_end = (st + 1) * 36
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..35]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (16) = happyShift action_5
action_0 (17) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (21) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_20
action_3 (8) = happyShift action_21
action_3 (9) = happyShift action_22
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_27
action_3 (16) = happyShift action_5
action_3 (17) = happyShift action_6
action_3 (18) = happyShift action_7
action_3 (21) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (25) = happyShift action_10
action_3 (29) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (35) = happyShift action_28
action_3 (36) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (12) = happyShift action_4
action_4 (16) = happyShift action_5
action_4 (17) = happyShift action_6
action_4 (18) = happyShift action_7
action_4 (21) = happyShift action_8
action_4 (22) = happyShift action_9
action_4 (25) = happyShift action_10
action_4 (29) = happyShift action_11
action_4 (32) = happyShift action_12
action_4 (4) = happyGoto action_18
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_4

action_6 _ = happyReduce_3

action_7 (6) = happyShift action_2
action_7 (12) = happyShift action_4
action_7 (16) = happyShift action_5
action_7 (17) = happyShift action_6
action_7 (18) = happyShift action_7
action_7 (21) = happyShift action_8
action_7 (22) = happyShift action_9
action_7 (25) = happyShift action_10
action_7 (29) = happyShift action_11
action_7 (32) = happyShift action_12
action_7 (4) = happyGoto action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (21) = happyShift action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (12) = happyShift action_4
action_10 (16) = happyShift action_5
action_10 (17) = happyShift action_6
action_10 (18) = happyShift action_7
action_10 (21) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (29) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (4) = happyGoto action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (21) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (12) = happyShift action_4
action_12 (16) = happyShift action_5
action_12 (17) = happyShift action_6
action_12 (18) = happyShift action_7
action_12 (21) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_20
action_13 (8) = happyShift action_21
action_13 (9) = happyShift action_22
action_13 (10) = happyShift action_23
action_13 (11) = happyShift action_24
action_13 (12) = happyShift action_4
action_13 (13) = happyShift action_25
action_13 (14) = happyShift action_26
action_13 (15) = happyShift action_27
action_13 (16) = happyShift action_5
action_13 (17) = happyShift action_6
action_13 (18) = happyShift action_7
action_13 (21) = happyShift action_8
action_13 (22) = happyShift action_9
action_13 (25) = happyShift action_10
action_13 (29) = happyShift action_11
action_13 (32) = happyShift action_12
action_13 (34) = happyShift action_42
action_13 (35) = happyShift action_28
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (30) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_20
action_15 (8) = happyShift action_21
action_15 (9) = happyShift action_22
action_15 (10) = happyShift action_23
action_15 (11) = happyShift action_24
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_25
action_15 (14) = happyShift action_26
action_15 (15) = happyShift action_27
action_15 (16) = happyShift action_5
action_15 (17) = happyShift action_6
action_15 (18) = happyShift action_7
action_15 (21) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (26) = happyShift action_40
action_15 (29) = happyShift action_11
action_15 (32) = happyShift action_12
action_15 (35) = happyShift action_28
action_15 (4) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (23) = happyShift action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_20
action_17 (8) = happyShift action_21
action_17 (9) = happyShift action_22
action_17 (10) = happyShift action_23
action_17 (11) = happyShift action_24
action_17 (12) = happyShift action_4
action_17 (13) = happyShift action_25
action_17 (14) = happyShift action_26
action_17 (15) = happyShift action_27
action_17 (16) = happyShift action_5
action_17 (17) = happyShift action_6
action_17 (18) = happyShift action_7
action_17 (19) = happyShift action_38
action_17 (21) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (32) = happyShift action_12
action_17 (35) = happyShift action_28
action_17 (4) = happyGoto action_19
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_26
action_18 (15) = happyShift action_27
action_18 (16) = happyShift action_5
action_18 (17) = happyShift action_6
action_18 (21) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (35) = happyShift action_28
action_18 (4) = happyGoto action_19
action_18 _ = happyReduce_10

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_20
action_19 (8) = happyShift action_21
action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (12) = happyShift action_4
action_19 (13) = happyShift action_25
action_19 (14) = happyShift action_26
action_19 (15) = happyShift action_27
action_19 (16) = happyShift action_5
action_19 (17) = happyShift action_6
action_19 (18) = happyShift action_7
action_19 (21) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (35) = happyShift action_28
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_13

action_20 (6) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (16) = happyShift action_5
action_20 (17) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (21) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (25) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (12) = happyShift action_4
action_21 (16) = happyShift action_5
action_21 (17) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (21) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (25) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (12) = happyShift action_4
action_22 (16) = happyShift action_5
action_22 (17) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (21) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (16) = happyShift action_5
action_23 (17) = happyShift action_6
action_23 (18) = happyShift action_7
action_23 (21) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (12) = happyShift action_4
action_24 (16) = happyShift action_5
action_24 (17) = happyShift action_6
action_24 (18) = happyShift action_7
action_24 (21) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (25) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (12) = happyShift action_4
action_25 (16) = happyShift action_5
action_25 (17) = happyShift action_6
action_25 (18) = happyShift action_7
action_25 (21) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (25) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (12) = happyShift action_4
action_26 (16) = happyShift action_5
action_26 (17) = happyShift action_6
action_26 (18) = happyShift action_7
action_26 (21) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (25) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (12) = happyShift action_4
action_27 (16) = happyShift action_5
action_27 (17) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (21) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (25) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_20

action_30 (6) = happyShift action_2
action_30 (16) = happyShift action_5
action_30 (17) = happyShift action_6
action_30 (21) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (25) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (35) = happyShift action_28
action_30 (4) = happyGoto action_19
action_30 _ = happyReduce_17

action_31 (6) = happyShift action_2
action_31 (16) = happyShift action_5
action_31 (17) = happyShift action_6
action_31 (21) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (25) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (35) = happyShift action_28
action_31 (4) = happyGoto action_19
action_31 _ = happyReduce_16

action_32 (6) = happyShift action_2
action_32 (16) = happyShift action_5
action_32 (17) = happyShift action_6
action_32 (21) = happyShift action_8
action_32 (22) = happyShift action_9
action_32 (25) = happyShift action_10
action_32 (29) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (35) = happyShift action_28
action_32 (4) = happyGoto action_19
action_32 _ = happyReduce_15

action_33 (6) = happyShift action_2
action_33 (10) = happyShift action_23
action_33 (12) = happyShift action_4
action_33 (13) = happyShift action_25
action_33 (14) = happyShift action_26
action_33 (15) = happyShift action_27
action_33 (16) = happyShift action_5
action_33 (17) = happyShift action_6
action_33 (21) = happyShift action_8
action_33 (22) = happyShift action_9
action_33 (25) = happyShift action_10
action_33 (29) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (35) = happyShift action_28
action_33 (4) = happyGoto action_19
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_2
action_34 (12) = happyShift action_4
action_34 (13) = happyShift action_25
action_34 (14) = happyShift action_26
action_34 (15) = happyShift action_27
action_34 (16) = happyShift action_5
action_34 (17) = happyShift action_6
action_34 (21) = happyShift action_8
action_34 (22) = happyShift action_9
action_34 (25) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (35) = happyShift action_28
action_34 (4) = happyGoto action_19
action_34 _ = happyReduce_8

action_35 (6) = happyShift action_2
action_35 (10) = happyShift action_23
action_35 (11) = happyShift action_24
action_35 (12) = happyShift action_4
action_35 (13) = happyShift action_25
action_35 (14) = happyShift action_26
action_35 (15) = happyShift action_27
action_35 (16) = happyShift action_5
action_35 (17) = happyShift action_6
action_35 (21) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (25) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (35) = happyShift action_28
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_7

action_36 (6) = happyShift action_2
action_36 (9) = happyShift action_22
action_36 (10) = happyShift action_23
action_36 (11) = happyShift action_24
action_36 (12) = happyShift action_4
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_26
action_36 (15) = happyShift action_27
action_36 (16) = happyShift action_5
action_36 (17) = happyShift action_6
action_36 (21) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (25) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (35) = happyShift action_28
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_6

action_37 (6) = happyShift action_2
action_37 (9) = happyShift action_22
action_37 (10) = happyShift action_23
action_37 (11) = happyShift action_24
action_37 (12) = happyShift action_4
action_37 (13) = happyShift action_25
action_37 (14) = happyShift action_26
action_37 (15) = happyShift action_27
action_37 (16) = happyShift action_5
action_37 (17) = happyShift action_6
action_37 (21) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (25) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (35) = happyShift action_28
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_5

action_38 (6) = happyShift action_2
action_38 (12) = happyShift action_4
action_38 (16) = happyShift action_5
action_38 (17) = happyShift action_6
action_38 (18) = happyShift action_7
action_38 (21) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (25) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (4) = happyGoto action_49
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (25) = happyShift action_46
action_39 (27) = happyShift action_47
action_39 (28) = happyShift action_48
action_39 (5) = happyGoto action_45
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_14

action_41 (6) = happyShift action_2
action_41 (12) = happyShift action_4
action_41 (16) = happyShift action_5
action_41 (17) = happyShift action_6
action_41 (18) = happyShift action_7
action_41 (21) = happyShift action_8
action_41 (22) = happyShift action_9
action_41 (25) = happyShift action_10
action_41 (29) = happyShift action_11
action_41 (32) = happyShift action_12
action_41 (4) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (12) = happyShift action_4
action_42 (16) = happyShift action_5
action_42 (17) = happyShift action_6
action_42 (18) = happyShift action_7
action_42 (21) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (25) = happyShift action_10
action_42 (29) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_20
action_43 (8) = happyShift action_21
action_43 (9) = happyShift action_22
action_43 (10) = happyShift action_23
action_43 (11) = happyShift action_24
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_25
action_43 (14) = happyShift action_26
action_43 (15) = happyShift action_27
action_43 (16) = happyShift action_5
action_43 (17) = happyShift action_6
action_43 (18) = happyShift action_7
action_43 (21) = happyShift action_8
action_43 (22) = happyShift action_9
action_43 (25) = happyShift action_10
action_43 (29) = happyShift action_11
action_43 (32) = happyShift action_12
action_43 (33) = happyShift action_54
action_43 (35) = happyShift action_28
action_43 (4) = happyGoto action_19
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_20
action_44 (8) = happyShift action_21
action_44 (9) = happyShift action_22
action_44 (10) = happyShift action_23
action_44 (11) = happyShift action_24
action_44 (12) = happyShift action_4
action_44 (13) = happyShift action_25
action_44 (14) = happyShift action_26
action_44 (15) = happyShift action_27
action_44 (16) = happyShift action_5
action_44 (17) = happyShift action_6
action_44 (18) = happyShift action_7
action_44 (21) = happyShift action_8
action_44 (22) = happyShift action_9
action_44 (25) = happyShift action_10
action_44 (29) = happyShift action_11
action_44 (31) = happyShift action_53
action_44 (32) = happyShift action_12
action_44 (35) = happyShift action_28
action_44 (4) = happyGoto action_19
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (25) = happyShift action_46
action_46 (27) = happyShift action_47
action_46 (28) = happyShift action_48
action_46 (5) = happyGoto action_51
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_21

action_48 _ = happyReduce_22

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_20
action_49 (8) = happyShift action_21
action_49 (9) = happyShift action_22
action_49 (10) = happyShift action_23
action_49 (11) = happyShift action_24
action_49 (12) = happyShift action_4
action_49 (13) = happyShift action_25
action_49 (14) = happyShift action_26
action_49 (15) = happyShift action_27
action_49 (16) = happyShift action_5
action_49 (17) = happyShift action_6
action_49 (18) = happyShift action_7
action_49 (20) = happyShift action_50
action_49 (21) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (25) = happyShift action_10
action_49 (29) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (35) = happyShift action_28
action_49 (4) = happyGoto action_19
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (12) = happyShift action_4
action_50 (16) = happyShift action_5
action_50 (17) = happyShift action_6
action_50 (18) = happyShift action_7
action_50 (21) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (25) = happyShift action_10
action_50 (29) = happyShift action_11
action_50 (32) = happyShift action_12
action_50 (4) = happyGoto action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (24) = happyShift action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (12) = happyShift action_4
action_52 (16) = happyShift action_5
action_52 (17) = happyShift action_6
action_52 (18) = happyShift action_7
action_52 (21) = happyShift action_8
action_52 (22) = happyShift action_9
action_52 (25) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (32) = happyShift action_12
action_52 (4) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (12) = happyShift action_4
action_53 (16) = happyShift action_5
action_53 (17) = happyShift action_6
action_53 (18) = happyShift action_7
action_53 (21) = happyShift action_8
action_53 (22) = happyShift action_9
action_53 (25) = happyShift action_10
action_53 (29) = happyShift action_11
action_53 (32) = happyShift action_12
action_53 (4) = happyGoto action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_19

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_20
action_55 (8) = happyShift action_21
action_55 (9) = happyShift action_22
action_55 (10) = happyShift action_23
action_55 (11) = happyShift action_24
action_55 (12) = happyShift action_4
action_55 (13) = happyShift action_25
action_55 (14) = happyShift action_26
action_55 (15) = happyShift action_27
action_55 (16) = happyShift action_5
action_55 (17) = happyShift action_6
action_55 (18) = happyShift action_7
action_55 (21) = happyShift action_8
action_55 (22) = happyShift action_9
action_55 (25) = happyShift action_10
action_55 (29) = happyShift action_11
action_55 (32) = happyShift action_12
action_55 (35) = happyShift action_28
action_55 (4) = happyGoto action_19
action_55 _ = happyReduce_18

action_56 (6) = happyShift action_2
action_56 (7) = happyShift action_20
action_56 (8) = happyShift action_21
action_56 (9) = happyShift action_22
action_56 (10) = happyShift action_23
action_56 (11) = happyShift action_24
action_56 (12) = happyShift action_4
action_56 (13) = happyShift action_25
action_56 (14) = happyShift action_26
action_56 (15) = happyShift action_27
action_56 (16) = happyShift action_5
action_56 (17) = happyShift action_6
action_56 (18) = happyShift action_7
action_56 (21) = happyShift action_8
action_56 (22) = happyShift action_9
action_56 (25) = happyShift action_10
action_56 (29) = happyShift action_11
action_56 (32) = happyShift action_12
action_56 (35) = happyShift action_28
action_56 (4) = happyGoto action_19
action_56 _ = happyReduce_12

action_57 (25) = happyShift action_46
action_57 (27) = happyShift action_47
action_57 (28) = happyShift action_48
action_57 (5) = happyGoto action_59
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_2
action_58 (7) = happyShift action_20
action_58 (8) = happyShift action_21
action_58 (9) = happyShift action_22
action_58 (10) = happyShift action_23
action_58 (11) = happyShift action_24
action_58 (12) = happyShift action_4
action_58 (13) = happyShift action_25
action_58 (14) = happyShift action_26
action_58 (15) = happyShift action_27
action_58 (16) = happyShift action_5
action_58 (17) = happyShift action_6
action_58 (18) = happyFail []
action_58 (21) = happyShift action_8
action_58 (22) = happyShift action_9
action_58 (25) = happyShift action_10
action_58 (29) = happyShift action_11
action_58 (32) = happyShift action_12
action_58 (35) = happyShift action_28
action_58 (4) = happyGoto action_19
action_58 _ = happyReduce_11

action_59 (26) = happyShift action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_23

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bg happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BE happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenNum happy_var_3))
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Proj happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_23 = happyReduce 5 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 36 36 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenAnd -> cont 10;
	TokenOr -> cont 11;
	TokenNot -> cont 12;
	TokenEq -> cont 13;
	TokenBg -> cont 14;
	TokenBE -> cont 15;
	TokenTrue -> cont 16;
	TokenFalse -> cont 17;
	TokenIf -> cont 18;
	TokenThen -> cont 19;
	TokenElse -> cont 20;
	TokenVar happy_dollar_dollar -> cont 21;
	TokenLam -> cont 22;
	TokenColon -> cont 23;
	TokenArrow -> cont 24;
	TokenLParen -> cont 25;
	TokenRParen -> cont 26;
	TokenBoolean -> cont 27;
	TokenNumber -> cont 28;
	TokenLet -> cont 29;
	TokenAtr -> cont 30;
	TokenIn -> cont 31;
	TokenLPair -> cont 32;
	TokenRPair -> cont 33;
	TokenComma -> cont 34;
	TokenProj -> cont 35;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 36 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
