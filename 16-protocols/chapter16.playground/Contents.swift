import Foundation

//PROTOCOL - NHƯ INTERFACE/ ABSTRACT CLASS
protocol Vehicle{
    func accelerate()
    func stop()
}

protocol Wheeled{
    var numberOfWheels: Int { get }
    var wheelSize: Double { get set }
}

class Unicycle: Vehicle{
    var peddling = false
    
    func accelerate() {
        peddling = true
    }
    
    func stop() {
        peddling = false
    }
}

protocol WheeledVehicle: Vehicle{
    var numberOfWheels: Int {get}
    var wheelSize: Double {get set}
}

class Bike: WheeledVehicle, Wheeled{
    
    let numberOfWheels = 2
    var wheelSize = 16.0
    
    var pedding = false
    var brakesApplied = false
    
    func accelerate() {
        pedding = true
        brakesApplied = false
    }
    
    func stop() {
        pedding = false
        brakesApplied = true
    }
}

//--- EXTENSION
class AnotherBike: Wheeled{
    var peddling = false
    let numberOfWheels = 2
    var wheelSize = 16.0
}

extension AnotherBike: Vehicle{
    func accelerate() {
        peddling = true
    }
    func stop() {
        peddling = false
    }
}


// --- PROTOCOL COMPOSITION - QUAN HỆ BẮT BUỘC
func roundAndRound(transportation: Vehicle & Wheeled){
    transportation.stop()
    print("The brakes are being applied to \(transportation.numberOfWheels) wheels.")
}

roundAndRound(transportation: Bike())


//--- METHOD IN PROTOCOL
enum Direction{
    case left
    case right
}

protocol DirectionalVehicle{
    func accelerate()
    func stop()
    func turn(_ direction: Direction)
    func description()-> String
}

protocol OptionalDirectionalVehicle{
    func turn()
    func turn(_ direction: Direction)
}

protocol VehicleProperties{
    var weight: Int {get}
    var name: String {get set}
}

// ---- BỘ KHỞI TẠO TRONG PROTOCOL
protocol Account{
    var value: Double {get set}
    init(initialAmount: Double)
    init?(transferAccount: Account)
}

class BitcoinAccount: Account{
    var value: Double
    required init(initialAmount: Double) {
        value = initialAmount
    }
    required init?(transferAccount: Account) {
        guard transferAccount.value > 0.0 else {
            return nil
        }
        value = transferAccount.value
    }
}

var accountType: Account.Type = BitcoinAccount.self
let account = accountType.init(initialAmount: 30.00)
let transferAccount = accountType.init(transferAccount: account)!

// ----- ASSOCIATED TYPES IN PROTOCOLS
protocol WeightCalculatable{
    // CÁC CLASS KẾ THỪA TỰ ĐỊNH NGHĨA KIỂU CỦA BIẾN NÀY
    associatedtype WeightType
    var weight: WeightType {get}
}

class HeavyThing: WeightCalculatable{
    typealias WeightType = Int
    
    var weight: Int {100}
}

class LightThing: WeightCalculatable{
    typealias WeightType = Double
    
    var weight: Double {0.0025}
}

// ---- EXTENSION & PROTOCOL CONFORMANCE
protocol Reflective{
    var typeName: String {get}
}

extension String: Reflective{
    var typeName: String{
        "I'm a String"
    }
}

let title = "Swift Apprentice"
title.typeName // I'm a String

// ---- REQUIRING REFERENCE SEMANTICS
protocol Named{
    var name: String {get set}
}

class ClassyName: Named{
    var name: String
    init(name: String){
        self.name = name
    }
}

struct StructyName: Named{
    var name: String
}

var named: Named = ClassyName(name: "Classy")
var copy = named

named.name = "Still Classy"
named.name // Still Classy
copy.name // Still Classy


named = StructyName(name: "Structy")
copy = named
named.name = "Still Structy?"
named.name // Still Structy?
copy.name // Structy


