import UIKit

var greeting = "Hello, playground"

struct BasicInformation {
    let name: String
    var age: Int
}

var joeunInfo: BasicInformation = BasicInformation(name: "joeun", age: 22)

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

let joeun: Person = Person()
joeun.height = 164.3
joeun.weight = 50.2

print(joeunInfo)
dump(joeunInfo)

print(joeun)
dump(joeun)

let name:String = "Joeun"
print("My name is \(name)")

//변수
var name1: String = "Lee"
var age1: Int = 22
var job1 = "iOS Programming" //타입 추론
var height1 = 164.3   //타입 추론
print("\(type(of: height1))")
print("저의 이름른 \(name1)이고, 나이는 \(age1)세이며, \(job1)직업은 입니다. 비밀이지만, 키는 \(height1)센티미터입니다")

//상수: 변하지 않는 값을 대입
let birth: Int = 1005
let name2 = "Joeun"
print("제 이름은 \(name)이고, 생일은 \(birth)입니다.")
