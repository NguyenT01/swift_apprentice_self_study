import Foundation

let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]


struct SimpleDate{
    var month: String = "January"
    var day: Int = 1
    
//    init(){
//        month = "January"
//        day = 1
//    }
//    init(month: String, day: Int){
//        self.month = month
//        self.day = day
//    }
    
    func monthsUntilWinterBreak(from date: SimpleDate) -> Int{
        months.firstIndex(of: "December")! - months.firstIndex(of: date.month)!
    }
    
    func monthsUntilWinterBreak()-> Int {
        months.firstIndex(of: "December")! - months.firstIndex(of: self.month)!
    }
    
    // KHI CÓ 1 HÀM MUỐN THAY ĐỔI GIÁ TRỊ CỦA STRUCT HIỆN TẠI THÌ XÀI MUTATING
    mutating func advance(){
        day += 1
    }
}

extension SimpleDate{
    init(month: Int, day: Int){
        self.month = months[month-1]
        self.day = day
    }
}

//let date = SimpleDate(month: "October")
//date.monthsUntilWinterBreak(from: date)
//
//date.monthsUntilWinterBreak()

let date = SimpleDate()
date.month
date.monthsUntilWinterBreak()

let valentinesDay = SimpleDate(month: "February", day: 14)
valentinesDay.month
valentinesDay.day

let newYearsDay = SimpleDate()
newYearsDay.month
newYearsDay.day

var octFirst = SimpleDate(month: "October")
octFirst.month
octFirst.day
octFirst.advance()

let halloween = SimpleDate(month: 10, day: 31)
halloween.month
halloween.day


// ----- TYPE METHOD
struct Math {
    static func factorial(of number: Int)-> Int{
        (1...number).reduce(1, *)
    }
}

Math.factorial(of: 6)

// --- EXTENSION
extension Math {
    static func primeFactor(of value: Int)-> [Int]{
        var remainingValue = value
        var testFactor = 2
        var primes: [Int] = []
        
        while testFactor * testFactor <= remainingValue {
            if remainingValue % testFactor == 0 {
                primes.append(testFactor)
                remainingValue /= testFactor
            }
            else {
                testFactor += 1
            }
        }
        if remainingValue > 1 {
            primes.append(remainingValue)
        }
        return primes
    }
}

Math.primeFactor(of: 81)

