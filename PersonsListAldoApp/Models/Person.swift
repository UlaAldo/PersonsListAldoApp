//
//  Person.swift
//  PersonsListAldoApp
//
//  Created by Юлия Алдохина on 06/02/22.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let mail: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.sample.names.shuffled()
        let surnames = DataManager.sample.surnames.shuffled()
        let phones = DataManager.sample.phones.shuffled()
        let mails = DataManager.sample.mails.shuffled()
        
       
        for i in Array(0...names.count-1) {
           let onePerson = Person(name: names[i], surname: surnames[i], phone: phones[i], mail: mails[i])
    
        persons.append(onePerson)
        }
        
        return persons
        }

    }


