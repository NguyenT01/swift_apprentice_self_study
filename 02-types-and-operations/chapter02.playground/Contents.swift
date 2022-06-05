import UIKit

//TYPE CONVERSION
var integer: Int = 100
var decimal: Double = 12.5
//integer = decimal   <-- BÁO LỖI KHI CHUYỂN KIỂU DOUBLE SANG INT
integer = Int(decimal) // <-- CHUYỂN KIỂU TƯỜNG MINH

// OPERATION WITH MIXED TYPE
let hourlyRate: Double = 19.5
let hoursWorked: Int = 10
let totalCost: Double = hourlyRate * Double(hoursWorked)

//TYPE INTERFACE
let typeInferredInt = 42
let typeInferredDouble = 3.1415

//CÁC CÁCH CHUYỂN KIỂU DỮ LIỆU
let wantDouble = 7 // <--- KIỂU INT

let d1 = Double(7)
let d2: Double = 7
let d3 = 7 as Double

//STRING
let characterA: Character = "a"
let characterDog: Character = "🐶"
let stringDog: String = "Dog"

let stringDog2 = "Dogg"

//CONCATENATION
var message = "Hello" + " my name is "
let name = "Nguyen"
message += name

let mark: Character = "!"
message += String(mark)

//INTERPOLATION
var mess2 = "Hello \(name), how are you?"

let oneThird = 1.0/3.0
let messOneThird = "One third is \(oneThird) as a Decimal"

//MULTI-LINE STRING
let bigString = """
    You can have a String
    that contains multiple
    lines
    by
    doing this.
"""
print(bigString)

//TUPLES
let coordinates: (Int, Int) = (2,3)
let coor2 = (2,3)
let coorDouble = (2.1, 3.5)
let coorMixed = (2.1, 3)

let coorNamed = (x:2, y:3)
let x2 = coorNamed.x
let y2 = coorNamed.y


let coor3D = (x:2, y:3, z:1)
// ACCESS COOR3D
// 1ST WAY
let (x3, y3, z3) = coor3D

//2ND WAYS
let x3d = coor3D.x
let y3d = coor3D.y
let z3d = coor3D.z

// BỎ QUA 1 BIẾN Z TRONG COOR3D DÙNG _
let (x4, y4,_) = coor3D

// TYPE ALIASES
// TỰ ĐỊNH NGHĨA KIỂU THÔNG QUA TÊN BÍ DANH
typealias Animal = String
let myPet: Animal = "Dog"

typealias ToaDo = (Int, Int)
let xy: ToaDo = (4,8)
