//
//  BioNavViewController.swift
//  AboutMe
//
//  Created by PASGON TEXTILE on 13.10.23.
//

import UIKit

final class BioNavViewController: UIViewController {

    @IBOutlet weak var bioLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = person.bio
    }
    
}
