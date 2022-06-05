import UIKit

//ARRAYS
let evenNumbers = [2,4,6,8]
print(evenNumbers)

var subscribers: [String] = []

let allZeros = Array(repeating: 0, count: 5)
//[0,0,0,0,0]

let vowels = ["A","E","I","O","U"]

var players = ["Alice","Bob","Cindy","Dan"]
print(players.isEmpty)

if players.count < 2 {
    print("We need at least 2 players")
}
else{
    print("Let start")
}

var currentPlayer = players.first
print(currentPlayer as Any)

print(players.last as Any)

print([2,3,1].first as Any)
print([2,3,1].min() as Any)

if let currentPlayer = currentPlayer{
    print("\(currentPlayer) will start")
}

var firstPlayer = players[0]
print("First player is \(firstPlayer)")

// USING COUNTABLE RANGES TO MAKE AN ARRAYSLICE
let slicePlayers = players[1...2]
print(slicePlayers[1], slicePlayers[2])
//ARRAY NÀY CÓ CHỈ SỐ ĐÚNG THEO CÁI MÌNH LẤY

// MUỐN CHUYỂN TỪ ARRAY THƯỜNG THÌ CHỈ CẦN ÉP KIỂU ARRAY
// ĐỀ XUẤT PHÁT INDEX = 0
let slicePlayers2 = Array(players[1...2])
print(slicePlayers2[0], slicePlayers2[1])

// insert ELEMENT
players.insert("Frank", at: 4)
players.remove(at: 4)

// SWAP VỊ TRÍ 2 ELEMENT TRONG ARRAY
players.swapAt(1, 2)

