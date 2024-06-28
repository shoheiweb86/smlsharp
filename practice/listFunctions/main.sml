val N = 5

val L1 = [1,2,3,4,5,6]
val L2 = [6,5,4,3,2,1]
val L1L2 = L1 @ L2
val L2L1List = [L2, L1]
val L1L2ListConcat = ListFunctions.concat L2L1List
val L1L2Zip = ListFunctions.zip L1 L2
val resultRecord = {1_L1 = L1, 2_L2 = L2, 3_L1L2 = L1L2, 4_L2L1List = L2L1List, 5_L1L2ListConcat = L1L2ListConcat, 6_L1L2Zip = L1L2Zip}
val _ = Dynamic.pp resultRecord