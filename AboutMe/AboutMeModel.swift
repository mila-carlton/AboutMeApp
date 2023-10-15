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
        Person(
               name: "Milana",
               surname: "Strelyayeva",
               photo: "MilaC",
               bio: "Я родилась в 1995 году в городе Керчь, но всю жизнь живу в Баку. Работаю в сфере туризма и очень люблю путешествовать. Сколько себя помню я учусь. Сначала изучала экономику в МГУ, потом училась на лингвиста: говорю на 5 языках. Программирование воспринимаю как ещё один иностранный язык, который хочу освоить. И вот поэтому я здесь! 🥰 ",
               company: Company.getCompany()
        )
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
