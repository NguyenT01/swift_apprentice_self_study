import UIKit

// COUNTABLE RANGES
// (0,1,2,3,4,5)
let closedRange = 0...5

//(0,1,2,3,4)
let halfOpenRange = 0..<5
print(halfOpenRange)

// RANDOM INTERLUDE
while(Int.random(in: 1...6) != 6){
    print("Not a six")
}

//FOR LOOPS
let count = 10
var sum = 0
for i in 1...count{
    sum+=i
}

// FOR LOOPS WITH IGNORE i
// When you don't want loop constant at all
sum = 1
var lastSum = 0

for _ in 0..<count{
    let temp = sum
    sum += lastSum
    lastSum = temp
}

// FOR LOOPS WITH CONDITIONS
sum = 0
for i in 1...count where i % 2 == 1{
    sum += i
}

// SWITCH STATEMENTS
let number = 10

switch number{
case 0:
    print("Zero")
default:
    print("Non-zero")
}

// SWITCH WITH CONDITIONS
switch number{
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

// SWITCH WITH CONDITIONS WHEN IGNORE X
switch number{
case _ where number % 2 == 0:
    print("Even 2")
default:
    print("Odd")
}

//PARTIAL MATCHING
let coor = (x:3, y:9, z: 0)

switch coor{
case (0,0,0):
    print("Origin")
case (_,0,0):
    print("X axis")
case (0,_,0):
    print("Y axis")
case (0,0,_):
    print("Z axis")
default:
    print("Somewhere in space")
}

// PARTIAL MATCHING WITH CONDITIONS
switch coor{
case let (x,y,_) where y == x:
    print("Along th y = x line")
case let (x,y,_) where y == x*x:
    print("Along the y= x^2 line")
default:
    break
}
