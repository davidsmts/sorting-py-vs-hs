def bubblesort(arr):
    cnt = 1
    while cnt > 0:
        cnt = 0
        # da immer i mit (i+1) verglichen wird nur bis len-1
        for i in range(0,len(arr)-1):   
            if arr[i] > arr[i+1]:
                tmp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = tmp
                cnt += 1
    return arr

def main():
    res = bubblesort([3,2,1,6,5,5,5,5,9,0,9,8,1])
    print(res)

if __name__=="__main__": 
    main() 
