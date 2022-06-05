import Foundation

struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
    deinit{
        print("\(firstName) \(lastName) is being removed from memory!")
    }
}

class Student: Person{
    var grades: [Grade] = []
    // TRÁNH RÒ RỈ MEMORY LEAK KHI THAM CHIẾU
    weak var partner: Student?
    
    deinit {
        print("\(firstName) is being deallocated!")
      }
    
    func recordGrade(_ grade: Grade){
        grades.append(grade)
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
let jane = Student(firstName: "Jane", lastName: "Appleseed")

var alice: Student? = Student(firstName: "Alice",
                              lastName: "Appleseed")
var bob: Student? = Student(firstName: "Bob",
                            lastName: "Appleseed")
alice?.partner = bob
bob?.partner = alice

alice = nil
bob = nil


john.firstName
jane.firstName

let history = Grade(letter: "B", points: 9.0, credits: 3.0)
jane.recordGrade(history)

// KẾ THỪA LIÊN TỤC (CHA -> CON -> CHÁU -> ...)
class BandMember: Student{
    var minimumPracticetime = 2
}

class OboePlayer: BandMember{
    override var minimumPracticetime: Int {
        get{
            super.minimumPracticetime * 2
        }
        set {
            super.minimumPracticetime = newValue / 2
        }
    }
}

//--- POLYMORPHISM
func phonebookName(_ person: Person) -> String{
    "\(person.lastName), \(person.firstName)"
}

let person = Person(firstName: "Johnny", lastName: "Appleseed")
let oboePlayer = OboePlayer(firstName: "Jane",
                            lastName: "Appleseed")

phonebookName(person)
phonebookName(oboePlayer)

//---- RUNTIME HIERACHY CHECKS
var hallMonitor = Student(firstName: "Jill",
                         lastName: "Bananapeel")

hallMonitor = oboePlayer

hallMonitor as? BandMember
(hallMonitor as? BandMember)?.minimumPracticetime

hallMonitor as! BandMember
(hallMonitor as! BandMember).minimumPracticetime

// DOWNCAST WITH LET OR GUARD
if let hallMonitor = hallMonitor as? BandMember{
    print("This hall monitor is a band member and practices at least \(hallMonitor.minimumPracticetime) hours per week.")
}

func afterClassActivity(for student: Student) -> String {
    "Goes home"
}
func afterClassActivity(for student: BandMember) -> String {
  "Goes to practice!"
}

afterClassActivity(for: oboePlayer) // Goes to practice!
afterClassActivity(for: oboePlayer as Student) // Goes home!

// INHERITANCE, METHOD, OVERRIDE
class StudentAthlete: Student{
    var sports: [String]
    var failedClasses: [Grade] = []
    
    init(firstName: String, lastName: String, sports: [String]){
        self.sports = sports
        let passGrade = Grade(letter: "P", points: 0.0, credits: 0.0)
        super.init(firstName: firstName, lastName: lastName)
        recordGrade(passGrade)
    }
    
    override func recordGrade(_ grade: Grade) {
        var newFailedClassed: [Grade] = []
        for grade in grades{
            if grade.letter == "F"{
                newFailedClassed.append(grade)
            }
        }
        failedClasses = newFailedClassed
        
        super.recordGrade(grade)
    }
    
    var isEligible: Bool{
        failedClasses.count < 3
    }
}

// ---- NGĂN CHẶN KẾ THỪA CLASS CHA
// THÊM TỪ KHOÁ FINAL TRƯỚC CLASS
final class FinalStudent: Person{}

//THÊM TỪ KHOÁ FINAL TRƯỚC FUNC NẾU NGĂN CHẶN OVERRIDE FUNC
class AnotherStudent: Person {
    final func recordGrade(_ grade: Grade) {}
}

//-----
class Student2 {
  let firstName: String
  let lastName: String
  var grades: [Grade] = []
  
    required init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
  
    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
  }
  
    func recordGrade(_ grade: Grade) {
    grades.append(grade)
  }
}

class StudentAth2: Student2{
    var sports: [String]

    required init(firstName: String, lastName: String) {
        self.sports = []
        super.init(firstName: firstName, lastName: lastName)
    }
}
