import Foundation
//Квадратное уравнение
var a:Double = 1
var b:Double = -4
var c:Double = -5
var D:Double = (b * b)-(4 * a * c)
if(D < 0){
    print("В уравнении нет корней")
}else if(D == 0){
    var x1 = ((b * -1) + sqrt(D)) / (2 * a)
    print("В уравнении один корень \(x1)")
}else if(D > 0){
    var x1 = ((b * -1) + sqrt(D)) / (2 * a)
    var x2 = ((b * -1) - sqrt(D)) / (2 * a)
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
var userSum:Double = 10000
var percent:Double = 5.7
var yearsOfContribution = 5
var totalSum = userSum + (userSum / 100 * percent) * Double(yearsOfContribution)
print("Сумма вашего вклада через 5 лет: \(totalSum)")


