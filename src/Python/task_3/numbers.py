def check_number(sequence):
    # Первое число - количество последующих чисел
    result_list = []
    n = sequence[0]  
    for i in range(1, n + 1, 1):
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
