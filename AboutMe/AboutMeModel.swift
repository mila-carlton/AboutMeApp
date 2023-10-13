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
    var company: Company
    
    static func getPerson() -> Person {
        Person(name: "Milana",
               surname: "Str",
               photo: "MilaC",
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
