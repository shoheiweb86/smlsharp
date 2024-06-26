val N = 5

val L1 = [1,2,3,4,5]
val L2 = [5,4,3,2,1]
val L1L2 = L1 @ L2
val L2L1List = [L1, L2]
val L1L2Concat = L2L1List
val L1L2Zip = zip L1 L2
val L1L2ZipFilter = filter  l
val listPair = 
val resultRecord = {L1 = L1, L2 = L2, L1L2 = L1L2, L2L1List = L2L1List, L1L2Concat = L1L2Concat, L1L2Zip = L1L2Zip, L1L2ZipFilter = L1L2ZipFilter, listPair = listPair}
val _ = Dynamic.pp resultRecord