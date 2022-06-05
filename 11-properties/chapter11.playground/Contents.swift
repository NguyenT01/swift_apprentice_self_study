import Foundation

struct Car{
    let make: String
    let color: String
}

struct Contact{
    var fullName: String
    let emailAddress: String
    var relationship = "Friend" // DEFAULT VALUE
}

var person = Contact(fullName: "Nguyen Tran", emailAddress: "nguyent@gmail.com")

//ACCESS PROPERTIES
person.fullName
person.emailAddress
person.relationship

person.fullName = "Nguyen Le"

var boss = Contact(fullName: "Ray Wenderlich", emailAddress: "ray@raywenderlich.com", relationship: "Boss")

// COMPUTED PROPERTIES
struct TV{
    var height: Double
    var width: Double
    var diagonal: Int {
        //GETTER - SETTER
        get{
            let result = (height * height + width * width).squareRoot().rounded()
            return Int(result)
        }
        set{
            let rationWidth = 16.0
            let rationHeight = 9.0
            let rationDiagonal = (rationWidth * rationWidth + rationHeight * rationHeight).squareRoot()
            height = Double(newValue) * rationHeight / rationDiagonal
            width = height * rationWidth / rationHeight
        }
    }
}

var tv = TV(height: 53.93, width: 95.87)
tv.diagonal

tv.width = tv.height
tv.diagonal

tv.diagonal = 70
tv.height
tv.width

// TYPE PROPERTIES
struct Level{
    static var highestLevel = 1
    let id: Int
    var boss: String
    var unlocked: Bool {
        didSet{
            if unlocked && id > Self.highestLevel {
                Self.highestLevel = id
            }
        }
    }
}

let level1 = Level(id: 1, boss: "Chameleon", unlocked: true)
let level2 = Level(id: 2, boss: "Squid", unlocked: false)
let level3 = Level(id: 3, boss: "Chupacabra", unlocked: false)
let level4 = Level(id: 4, boss: "Yeti", unlocked: false)

Level.highestLevel

// ------ LIMITING A VARIABLE
struct LightBulb {
    static let maxCurrent = 40
    var current = 0 {
        didSet{
            if current > LightBulb.maxCurrent{
                print("""
                      Current is too high,
                      falling back to previous setting.
                      """)
                current = oldValue
            }
        }
    }
}

var light = LightBulb()
light.current = 50
light.current
light.current = 40
light.current


// --- LAZY PROPERTIES
// "mutating" keyword -> tự động chạy lại hàm khi có sự thay đổi của các biến trong class
struct Circle {
    lazy var pi = {
        ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    }()
    var radius = 0.0
    var circumference: Double {
        mutating get {
            pi * radius * 2
        }
    }
    init(raidus: Double){
        self.radius = raidus
    }
}

var circle = Circle(raidus: 5)
circle.circumference
