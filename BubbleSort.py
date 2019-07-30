# -*- coding: utf-8 -*-
def bubbleSort(nlist):
    index = nlist.copy()
    rank = nlist.copy()
    
    orilist = nlist.copy()
    for passnum in range(len(nlist)-1,0,-1):
        for i in range(passnum):
            if nlist[i]>nlist[i+1]:
                temp = nlist[i]
                nlist[i] = nlist[i+1]
                nlist[i+1] = temp
    print('original :' ,orilist)
    print('sorted :' ,nlist)
    
    for i in range(len(nlist)):
        index[i] = orilist.index(nlist[i]) + 1
        rank[i] = nlist.index(orilist[i]) + 1
    print('index :' ,index)
    print('rank :' ,rank)

    
myArray = [31, 2, 11, 23, 8, 7, 11, 14, 20]
bubbleSort(myArray)




