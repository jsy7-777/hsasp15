import UIKit

class calculator {
    var number1: Int
    var number2: Int
    
    init(number1: Int, number2: Int) {
        self.number1 = number1
        self.number2 = number2
        
    }
    func add() -> Int{
        return number1 + number2
    }
    func minus() -> Int {
        return number1 - number2
    }
    func multiply() -> Int {
        return number1 * number2
    }
    func divide() -> Double {
        if Double(number2) == 0 {
            print("계산불가"); return 0
        } else {
            return Double(number1) / Double(number2)
        }
    }
}
let calc = calculator(number1: 10, number2: 20)
print(calc.add())
print(calc.minus())
print(calc.multiply())
print(calc.divide())
// number1, 2에 Double을 씌우니까 소수점까지 나오네
