import UIKit

// Chapter 3. 데이터 타입 기본
var integer: Int = -100
let unsignedInteger: UInt = 50

print("interger 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

let largeInteger: Int64 = Int64.max
let smallInsignedInteger: UInt8 = UInt8.max
print("Int64 최대값: \(largeInteger), UInt 최댓값: \(smallInsignedInteger)")

// 진수별 정수 표현
let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100
let octalInteger: Int = 0o3467
let hexadecimalInteger: Int = 0x1C

var boolean: Bool = true
boolean.toggle() //true - false 반전
print(boolean)

var floatValue: Float = 1234567890.1  // 자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어진다.
var doubleValue: Double = 1234567890.1
print("floatValue: \(floatValue), doubleValue: \(doubleValue)")

let alphabetA: Character = "A"
print(alphabetA)
let commandCharacter: Character = "♡" // 유니코드 문자 사용 가능
print(commandCharacter)

let name: String = "joeun"
var introduce: String = String()
introduce.append("제 이름은")
introduce = introduce + " " + name + "입니다."
print(introduce)
// 프로퍼티를 이용하여 문자열 길이 확인하기
print("name의 글자 수: \(name.count)")
//프로퍼티를 통한 빈 문자열 확인
print("introduce가 비어있습니까?: \(introduce.isEmpty)")

//연산자를 통한 문자열 비교
let hello: String = "Hello"
var isSampleString: Bool = false
isSampleString = hello == "Hello"
print(isSampleString)

//메서드를 통한 접두어, 접미어 확인
var hasPrefix: Bool = false
hasPrefix = hello.hasPrefix("He")
print(hasPrefix)


//메서드를 통한 대소문자 변환
var convertedString: String = ""
convertedString = hello.uppercased()
print(convertedString)
convertedString = hello.lowercased()
print(convertedString)

var greeting: String = String()
// 여러 줄의 문자열
greeting = """
안녕하세요! 저는 \"조은\"입니다. \n 스위프트 잘하고 싶어요!
잘 부탁드립니다!
"""
print(greeting)
