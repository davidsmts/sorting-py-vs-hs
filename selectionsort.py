


def selection_sort(inp):
    for i in range(len(inp)-1, -1, -1):
        maximum = maxEl(inp[:i+1])
        temp = inp[maximum]
        inp[maximum] = inp[i]
        inp[i] = temp

    return inp


def maxEl(inp):
    maxI = 0
    for i in range(0, len(inp)):
        if inp[i] >= inp[maxI]:
            maxI = i
    
    return maxI



def main():
    print(selection_sort([3,2,1,6,5]))

if __name__=="__main__": 
    main() 
