import UIKit

//타입을 지정하지 않았으나 타입 추론을 통하여 name은 String 타입으로 선언된다.
var name = "joeun"

//앞서 타입 추론에 의해 name은 Steing 타입의 변수로 지정되었기 때문에
//정수를 할당하려도 시도하면 오류가 발생한다.
//에러 발생 name = 100

//타입 별칭
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 100   //MyInt는 Int의 또 다른 이름
var year: YourInt = 2080  // YoutInt는 Int의 또 다른 이름이다.

year = age

let month: Int = 7
let percentage: MyDouble = 99.9

print(year)
