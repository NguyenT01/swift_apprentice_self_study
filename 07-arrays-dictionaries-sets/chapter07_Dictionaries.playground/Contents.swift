import UIKit

// DICTIONARIES LƯU DƯỚI DẠNG CẶP KEY-VALUE
// DICTIONARIES KHÔNG SẮP XẾP ĐƯỢC
var nameAndScores = ["Anna":2, "Brian":2, "Craig": 8, "Donna": 6]
print(nameAndScores)

// XOÁ DICTIONARIES
nameAndScores = [:]

//KHỞI TẠO RỖNG CỦA DICTIONARIES
var pairs: [String: Int] = [:]

// GIỚI HẠN SỨC CHỨA CỦA DICTIONARY
pairs.reserveCapacity(20)

// TRUY CẬP DICTIONARIES
nameAndScores = ["Anna":2, "Brian":2, "Craig": 8, "Donna": 6]

print(nameAndScores["Anna"]!)
nameAndScores["Greg"]

// THÊM CẶP KEY-VALUE
var bobData = [
    "name": "Bob",
    "profession": "Card Player",
    "country": "USA"
]
// CÁCH 1
bobData.updateValue("ca", forKey: "state")
// CÁCH 2
bobData["city"] = "San Francisco"

// UPDATE VALUE
//CÁCH 1
bobData.updateValue("Bobby", forKey: "name")
//CÁCH 2
bobData["profession"] = "Mailman"

// XOÁ CẶP KEY-VALUE
// CÁCH 1
bobData.removeValue(forKey: "state")
// CÁCH 2
bobData["city"] = nil

// DUYỆT DICTIONARIES
for (player, score) in nameAndScores{
    print("\(player) - \(score)")
}

//DUYỆT KEY
for player in nameAndScores.keys{
    print("\(player), ", terminator: "")
}



