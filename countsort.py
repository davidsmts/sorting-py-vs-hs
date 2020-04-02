
base10 = [i for i in range(0,10)]
base10Empty = [0 for i in range(0,10)]

def counting_sort(inp, base):
    if (base != 10):
        return []

    countContainer = base10Empty[:]
    glob_cnt = 0
    for i in base10:
        glob_cnt += cnt_num(i, inp)
        countContainer[i] = glob_cnt

    endContainer =  inp[:]
    for i in range(len(inp), 0, -1):
        val = inp[i-1]
        pos = countContainer[val]-1
        endContainer[pos] = val
        countContainer[val] -= 1
    return endContainer


def cnt_num(num, inp):
    cnt = 0
    for i in inp:
        if num == i:
            cnt += 1

    return cnt

def main():
    res = counting_sort([3,2,1,6,5,5,5,5,9,0,9,8,1], 10)
    print(res)

if __name__=="__main__": 
    main() 
