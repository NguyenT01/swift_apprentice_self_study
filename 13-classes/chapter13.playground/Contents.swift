import Foundation

// STRUCT : THAM TRỊ  --> THAY ĐỔI GIÁ TRỊ KHÔNG LÀM THAY ĐỔI ĐỐI TƯỢNG TRƯỚC ĐÓ
// CLASS: THAM CHIẾU --> THAY ĐỔI ĐỐI TƯỢNG (TRỎ CÙNG 1 VÙNG NHỚ)

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
var homeOwner = john
john.firstName = "John"
homeOwner.firstName

// SỬ DỤNG 3 DẤU = ĐỂ KIỂM TRA ĐỊA CHỈ 2 THANH NHỚ
john === homeOwner

//------ REFERENCE TYPES
class SimplePerson{
    let name: String
    init(name:String){
        self.name = name
    }
}

var var1 = SimplePerson(name: "John")
var var2 = var1


struct SimplePersonStruct{
    let name: String
}

// ---- METHODS AND MUTABILITY
struct Grade{
    let letter: String
    let points: Double
    let credits: Double
}

class Student{
    var firstName: String
    var lastName: String
    var grades: [Grade] = []
    var credits = 0.0
    
    init(fistName: String, lastName: String){
        self.firstName = fistName
        self.lastName = lastName
    }
    
    func recordGrade(_ grade: Grade){
        grades.append(grade)
        credits += grade.credits
    }
    
}

let jane = Student(fistName: "Jane", lastName: "Appleseed")
let history = Grade(letter: "B", points: 9.0 , credits: 3.0)
var math = Grade(letter: "A", points: 16.0, credits: 4.0)

jane.recordGrade(history)
jane.recordGrade(math)

//---- STATE
jane.credits
math = Grade(letter: "A", points: 20.0, credits: 5.0)
jane.recordGrade(math)

jane.credits

//--- CLASS EXTENSION
extension Student{
    var fullName: String{
        "\(firstName) \(lastName)"
    }
}

