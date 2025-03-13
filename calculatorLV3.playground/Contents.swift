import UIKit

//2. Lv3 `03/12 까지`
//    - [ ]  아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
//        - [ ]  AddOperation(더하기)
//        - [ ]  SubtractOperation(빼기)
//        - [ ]  MultiplyOperation(곱하기)
//        - [ ]  DivideOperation(나누기)
//    - [ ]  Calculator 클래스의 내부코드를 변경
//        - [ ]  관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용
//    - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
//        - hint. 클래스의 책임(단일책임원칙)

class AddOperation {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    func result() -> Int {
        return a + b
    }
}
class SubtractOperation {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    func result() -> Int {
        return a - b
    }
}
class MultiplyOperation {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    func result() -> Int {
        return a * b
    }
}
class DivideOperation {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    func result() {
        guard b != 0 else {
             print("계산하기 싫다. 다른거 해라")
            return
        }
        let quotient = a / b
        print( "\(a)을 \(b)로 나눈 몫는 \(quotient)이다.")
        let remainder = a % b
        print( "\(a)을 \(b)로 나눈 나머지는 \(remainder)이다.")
        
        //나머지 몫은 우쨰 구하지?
        
        
    }
}
    
    class Calculator {
        
        func DoAdd (a: Int, b: Int) -> Int{
            AddOperation(a: a, b: b).result()
            
            
        }
        func DoSubstract (a: Int, b: Int) -> Int{
            SubtractOperation(a: a, b: b).result()
            
        }
        func DoMultiply (a: Int, b: Int) -> Int{
            MultiplyOperation(a: a, b: b).result()
            
        }
        func DoDivide (a: Int, b: Int) {
            DivideOperation(a: a, b: b).result()
            
            
            }
        }
    
let calc = Calculator()
print(calc.DoDivide(a:30, b:0))
