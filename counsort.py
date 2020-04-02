
base10 = [i for i in range(1,10)]
base10Empty = [0 for i in range(1,10)]

def counting_sort(inp, base):
    if (base != 10):
        return []

    countContainer = base10Empty[:]
    glob_cnt = 0
    for i in base10:
        glob_cnt += cnt_num(i, inp)
        countContainer[i] = glob_cnt

    print(countContainer)
    for i in range(len(inp)-1, 0, -1):
        print(i)


def cnt_num(num, inp):
    cnt = 0
    for i in inp:
        if num == i:
            cnt += 1

    return cnt

def main():
    counting_sort([3,2,1,6,5])

if __name__=="__main__": 
    main() 
