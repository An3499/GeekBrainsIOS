import Foundation

//Написать функцию, которая определяет, четное число или нет

/*print("Введите число")
var numberUser = NSString(string: readLine() ?? "0").integerValue

func numberType(number n: Int) {
if(n % 2 == 0){
print("Число чётное")
}else{
print("Число нечётное")
}

}
numberType(number: numberUser)

//Написать функцию, которая определяет, делится ли число без остатка на 3

print("Введите число")
numberUser = NSString(string: readLine() ?? "0").integerValue

func remainderNumber(remainder r: Int) {
if(r % 3 == 0){
print("Число делится без остатка")
}else{
print("Число делится с остатком")
}

}
remainderNumber(remainder: numberUser)*/

//Создать возрастающий массив из 100 чисел
/*var totalSum: [Int] = []
for index in 1...100{
	totalSum.append(index)
}
print(totalSum)

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3
for index in totalSum {
	if(index % 2 == 0 || index % 3 != 0){
		
		if let foundIdx = totalSum.firstIndex(of: index){
			totalSum.remove(at: foundIdx)
		}
	}
}

print("Нечетные числа и числа, которые делятся на 3: \(totalSum)")*


