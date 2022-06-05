import UIKit

let string = "Nguyen"
for char in string{
    print(char)
}
let stringLength = string.count

//-----
let name = "nguyen"
let backwardsName = name.reversed()
let secondCharIndex = backwardsName.index(backwardsName.startIndex, offsetBy: 1)
let secondChar = backwardsName[secondCharIndex]
let backwardsNameString = String(backwardsName)

//RAW STRING
// KHÔNG BỊ GIỚI HẠN BỞI CÁC KÝ TỰ ĐẶC BIỆT
let raw1 = #"It's very useful. How can get it, Sarah? \\"#
print(raw1)

//RAW STRING SỬ DỤNG ĐƯỢC DẤU #
let raw2 = ##"Mã số #4554 "##
print(raw2)

//RAW STRING SỬ DỤNG INTERPOLATION
let can = "can do that too"
let raw3 = #"Yes we \#(can)! "#
print(raw3)

// SUBSTRINGS
let fullName = "Matt Galloway"
let spaceIndex = fullName.firstIndex(of: " ")!
let firstName = fullName[..<spaceIndex]
let lastName = fullName[fullName.index(after: spaceIndex)...]
let lastNameString = String(lastName)

