import Foundation
//Квадратное уравнение
var a:Double = 1
var b:Double = -4
var c:Double = -5
var D:Double = (b * b)-(4 * a * c)
if(D < 0){
    print("В уравнении нет корней")
}else if(D == 0){
    let x1 = ((b * -1) + sqrt(D)) / (2 * a)
    print("В уравнении один корень \(x1)")
}else if(D > 0){
    let x1 = ((b * -1) + sqrt(D)) / (2 * a)
    let x2 = ((b * -1) - sqrt(D)) / (2 * a)
    print("В уравнении два корня \(x1) , \(x2)")
}

//Площадь треугольника
var AC:Double = 10
var BC:Double = 20
var S = 0.5 * (BC * AC)
print("Площадь прямоугольного треугольника: \(S)")

//Периметр треугольника
let sumOfLegs = (AC * AC) + (BC * BC)
var P = sqrt(sumOfLegs) + (AC + BC)
print("Периметр прямоугольного треугольника: \(P)")

//Гипотенуза треугольника 
var hypotenuse = sqrt(sumOfLegs)
print("Гипотенуза прямоугольного треугольника: \(hypotenuse)")

//Найти сумму вклада через 5 лет
print("Введите сумму вклада")
var userSum = NSString(string:readLine() ?? "0").doubleValue
print("Введите процентную ставку")
var percent = NSString(string:readLine() ?? "0").doubleValue
var yearsOfContribution:Double = 5
if(userSum > 0 && percent > 0){
    let totalSum = userSum + userSum / 100 * percent * yearsOfContribution
    print("Сумма вашего вклада через 5 лет: \(totalSum)")
} else{
    print("Вы ввели некорректные данные")
}



