//
//  AboutMeModel.swift
//  AboutMe
//
//  Created by PASGON TEXTILE on 13.10.23.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var photo: String
    var bio: String
    var company: Company
    
    static func getPerson() -> Person {
        Person(name: "Milana",
               surname: "Str",
               photo: "MilaC",
               bio: "Я родилась в 1995 году в городе Керчь, но всю жизнь живу в Баку. Работаю в сфере туризма и очень люблю путешествовать, поэтому в какой-то момент я решила что больше не хочу быть привязана к офису и нужно менять сферу деятельности. И вот теперь я здесь!",
               company: Company.getCompany())
    }
}


struct Company {
    var title: String
    var department: String
    var position: String
    
    static func getCompany() -> Company {
        Company(title: "Carlton LLC",
                department: "Travel",
                position: "Tourism manager")
    }
}
