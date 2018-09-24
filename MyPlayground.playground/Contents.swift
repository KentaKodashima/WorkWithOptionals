//
//  MyPlayground.playground
//  WorkWithOptionals
//
//  Created by Kenta Kodashima on 2018-09-23.
//  Copyright © 2018 Kenta Kodashima. All rights reserved.
//

import UIKit

class Person {
  var firstName: String
  var lastName: String
  // An optional
  var middleName: String?
  // 5. Implicitly Unwrapped Optional
  var jobTitle: String!
  
  init() {
    self.firstName = "Ted"
    self.lastName = "Mosby"
    self.jobTitle = "Architecture"
  }
  
  // 2. Optional Binding (guard let)
  func getMiddleName() {
    guard let midName = self.middleName else { return }
    print(midName)
  }
}

var person = Person()
// Adding middleName to the person
// You can comment this out to check what happens when the person doesn't have middleName
person.middleName = "Evelyn"

// 1. Forced Unwrapping (!)
if person.middleName != nil {
  print(person.middleName!)
}

// 2. Optional Binding (if let)
if let midName = person.middleName {
  print(midName) // you can use "value" without "!" here
} else {
  print("This person doesn't have a middle name")
}

person.getMiddleName()

// 3. Optional Chaining (?)
// it will be nil if the person's middleName is empty
let midName =  person.middleName?.uppercased()

// 4. Nil-Coalescing operator
// if middleName is empty, middleName will be "Wait for it"
let midNamem = person.middleName ?? "Wait for it"

// 5. Implicitly Unwrapped Optionals
print(person.jobTitle) // there's no need put "!" or "?"
