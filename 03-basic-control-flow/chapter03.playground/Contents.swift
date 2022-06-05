import UIKit

let yes: Bool = true
let no: Bool = false

let yes1 = true
let no1 = false

let doesOneEqualTwo = (1==2)
let doesOneNotEqualTwo = (1 != 2)

let alsoTrue = !(1==2)

let isOneGreaterThanTwo = (1>2)
let isoneLessThanTwo = (1<2)

// BOOLEAN LOGIC
let and = true && true

let or = true || false

let andTrue = 1<2 && 4>3
let andFalse = 1<2 && 4<3
let orTrue = 1<2 || 3>4
let orFalse = 1==2 || 3==4

let andOr = (1<2 && 3>4) || 1<4

//STRING EQUALITY
let guess = "dog"
let dogEqualsCat =  guess == "cat"

let order = "cat" < "dog"

//TOGGLE A BOOL
var switchState = true
switchState.toggle()
switchState.toggle()

//IF STATEMENT

if(2>1){
    print("Yes, 2 is greater than 1")
}

// ENCAPSULATING VARIABLES
var hrw = 45
var price = 0
if (hrw>40){
    let hro40 = hrw - 40
    price += hro40 * 50
    hrw -= hro40
}
price += hrw * 25
print(price)

// SHORT IF
let a = 5
let b = 10

let min = a < b ? a : b
let max = a > b ? a : b

// WHILE LOOPS
var sum = 1
while (sum < 10){
    sum += 1
}

// REPEAT-WHILE LOOPS
// it's do-while loops but renamed
sum = 1
repeat{
    sum+=1
} while(sum<10)

//BREAKING OUT OF LOOP
sum = 1
while true{
    sum+=1
    if sum == 5{
        break
    }
}
