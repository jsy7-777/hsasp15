import UIKit

//1. Lv2 `03/11 까지`
//    - [ ]  Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
//    - ex) 나머지 연산 예시 : 6을 3으로 나눈 나머지는 0 / 5를 3으로 나눈 나머지는 2
//    - [ ]  오류가 날 수 있는 ‘예외처리’ 상황에 대해 고민해보기 + 구현하기


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
    func divide()  {
        guard number2 != 0 else {
            print("계산하기 싫다. 다른거 해라")
            return
        }
        let result = number1 % number2
        print( "\(number1)을 \(number2)로 나눈 나머지는 \(result)이다.")
    
        }
    
    }

let calc = calculator(number1: 10, number2: 0)
calc.divide()
print(calc.add())
