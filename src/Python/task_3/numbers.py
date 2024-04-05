def check_number(sequence):
    result_list = []
    for i in range(0, len(sequence), 1):
        temp, summa, composition = sequence[i], 0, 1
        while temp > 0: 
            summa += temp % 10
            composition *= temp % 10
            temp //= 10
        if summa < composition:
            result_list.append(i)
    return result_list
        

sequence = list(map(int, input().split()))
print(*check_number(sequence))
