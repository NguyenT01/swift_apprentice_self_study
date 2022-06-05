import Foundation

class Cat {}
class Dog {}

class KeeperForCats {}
class KeeperForDogs {}

class Keeper<Animal> {}

var aCatKeeper = Keeper<Cat>()


//--------

class Cat2 {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

class Dog2 {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

protocol Pet {
  var name: String { get }  // all pets respond to a name
}
extension Cat2: Pet {}
extension Dog2: Pet {}

class Keeper2<Animal: Pet> {
  var name: String
  var morningCare: Animal
  var afternoonCare: Animal
  
  init(name: String, morningCare: Animal, afternoonCare: Animal) {
    self.name = name
    self.morningCare = morningCare
    self.afternoonCare = afternoonCare
  }
}

let jason = Keeper2(name: "Jason", morningCare: Cat2(name: "Whiskers"), afternoonCare: Cat2(name: "Sleepy"))


//extension Array where Element: Cat {
//  func meow() {
//    forEach { print("\($0.name) says meow!") }
//  }
//}

protocol Meowable {
    func meow()
}

extension Cat2: Meowable {
  func meow() {
    print("\(self.name) says meow!")
  }
}
extension Array: Meowable where Element: Meowable {
  func meow() {
    forEach { $0.meow() }
  }
}
