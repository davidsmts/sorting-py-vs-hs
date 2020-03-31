
def iterativ_mergesort(inp):
    sets = []
    #divide
    for i in range(0,len(inp)):
        sets.append([inp[i]])

    #conquer
    while (len(sets[0]) < len(inp)):
        print(sets)
        newset = []
        for i in range(0, len(sets), 2):                                    # iterate over subsets
            if (i+1 > len(sets)-1):
                newset.append(sets[i])
                break
            else:
                newset.append([])
            cnt1 = 0
            cnt2 = 0
            while True:                                                     # iterate through subset content
                if (sets[i][cnt1] < sets[i+1][cnt2]):
                    newset[int(i/2)].append(sets[i][cnt1])
                    cnt1 += 1
                else:
                    newset[int(i/2)].append(sets[i+1][cnt2])                     # running index of new list is always i/2
                    cnt2 += 1
    
                if (len(sets[i]) == cnt1):
                    newset[int(i/2)] = newset[int(i/2)] + sets[i+1][cnt2 : len(sets[i+1])]          # join with remaining slice
                    break
                elif (len(sets[i+1]) == cnt2):
                    newset[int(i/2)] = newset[int(i/2)] + sets[i][cnt1 : len(sets[i])]
                    break
        sets = newset

    print(sets)

""" def mergesort(inp):
    #divide
    if (len(inp) > 1):
        mergesort()
    else:
        print("dd") """

#def divide(inp):


#def conquer(inp):


def main():
    iterativ_mergesort([3,2,1,6,5])

if __name__=="__main__": 
    main() 
