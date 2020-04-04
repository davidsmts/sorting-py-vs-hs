
def insertion_sort(inp):
    for i in range(0,len(inp), 1):
        #insert
        cnt = i-1
        val = inp[i]
        while val < inp[cnt] and cnt >= 0:
            inp[cnt+1] = inp[cnt]
            cnt -= 1

        inp[cnt+1] = val

    return inp

def main():
    res = insertion_sort([3,2,1,6,5,5,5,5,9,0,9,8,1])
    print(res)

if __name__=="__main__": 
    main() 
