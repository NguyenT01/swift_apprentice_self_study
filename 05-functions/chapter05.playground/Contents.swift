import UIKit

// FUNCTION BASICS
func printMyName(){
    print("My name is Nguyen Tran.")
}

printMyName()

//FUNCTION PARAMETERS
func printMultipleOfFive(value: Int){
    print("\(value) * 5 = \(value*5)")
}

printMultipleOfFive(value: 10)

func addNumbers(a: Int, b: Int){
    print("\(a) + \(b) = \(a+b)")
}

addNumbers(a: 4, b: 3)

// EXTERNAL AND INTERNAL NAME
// x2 is external name (call in param)
// y1 is internal name (use inside func)
func printSum(x1: Int, x2 y1: Int){
    print("\(x1) + \(y1) = \(x1+y1)")
}

printSum(x1: 3, x2: 7)

//OMIT EXTERNAL PARAM NAME IN FUNC
func omitSum(_ x1: Int, _ x2: Int){
    print("\(x1) + \(x2) = \(x1+x2)")
}

omitSum(7, 9)

//RETURN VALUE IN FUNC
//SỬ DỤNG -> <Kiểu Trả Về> {} để trả về kết quả
func multiply(_ x1:Int, by x2:Int) -> Int{
    return x1*x2
}
let result = multiply(7, by: 3)

//RETURN TUPLE WITH FUNC
func multiplyAndDivide(_ n1: Int, _ n2:Int)-> (
    product: Int, quotient: Int){
        return (n1*n2, n1/n2)
    }

let results = multiplyAndDivide(6, 2)
let prod = results.product
let quotient = results.quotient

//LƯU Ý: TẤT CẢ PARAMETER ĐỀU LÀ CONST, NÊN KHÔNG THỂ
// THAY ĐỔI GIÁ TRỊ ĐƯỢC

//SỬ DỤNG INOUT ĐỂ ĐƯỢC QUYỀN THAY ĐỔI GIÁ TRỊ CỦA
// PARAM
// CÁCH NÀY HƠI GIỐNG CON TRỎ TRONG C
// PARAM ĐƯỢC TRUYỀN ĐỀU BỊ THAY ĐỔI Ở TRONG VÀ
// NGOÀI FUNC
func increment(_ number: inout Int){
    number += 1
    print(number)
}

var number = 5
increment(&number)
print(number)

// OVERLODING
func getVal()-> Int{
    return 31
}
func getVal()-> String{
    return "Nguyen"
}

func getVal(_ x: Int) -> Int {
    return x
}

let valString: String = getVal()
let valInt: Int = getVal()
let valIntParam: Int = getVal(7)

//FUNCTIONS AS VARIABLES
func add(_ a:Int, _ b:Int) -> Int{
    a+b
}

var function = add
function(4,2)

