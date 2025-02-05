

array = [0,1,2,0,5,10,13,4,3,3,13,1,22,2,8,10,0,8,5]

def difference(list):
    while(len(list) != 2):
        mid = len(list) // 2
        for i in range(0, mid):
            list[i] = list[i] - list[len(list) - 1]
            list.pop()
        difference(list)
    return list[0] - list[1]

#1. Четные числа
print("1. Четные числа:", list(num for num in array if num % 2 == 0))

#2. Числа и кол-во их повторений
nums = dict()
for num in array:
    if num in nums:
        nums[num] += 1
    else:
        nums[num] = 1
print("2. Числа и кол-во их повторений:", nums)

#3.Числа на нечетных позициях
print("3. Числа на нечетных позициях:", array[1::2])

#4. Произведение всех ненулевых чисел
res = 1
for num in array:
    if (num != 0):
        res *= num
print("4. Произведение всех ненулевых чисел:", res)

# 5.Перевернутый массив
print("5. Перевернутый массив:", array[::-1])

# 6.Среднее значение
sum = 0
for num in array:
    sum += num
print("6. Среднее значение:", sum / len(array))

#6. Произвольный отрезок значений в произвольном диапазоне
print("6. Произвольный отрезок значений в произвольном диапазоне", array[3:16:2])

# 7.
print("7. Разница между первым и последним:", difference(array))
