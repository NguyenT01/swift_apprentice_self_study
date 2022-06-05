import UIKit

// CLOSURE
//var multiplyClosure: (Int, Int) -> Int
var multiplyClosure = {
    (a: Int, b: Int)-> Int in
    return a*b
}

let result = multiplyClosure(4,2)

//SHORTHAND SYNTAX
multiplyClosure = {
    (a,b) in
    a * b
}

multiplyClosure = {
    $0 * $1
}

//------
func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int)-> Int) -> Int{
    let result = operation(a,b)
    print(result)
    return result
}

let addClosure = {
    (a: Int, b: Int) in
    a + b
}
operateOnNumbers(4, 2, operation: addClosure)

//-------
let values = [1,2,3,4,5,6]
values.forEach{
    print("\($0) : \($0*$0)")
}
