//
//  InfoNavigationController.swift
//  AboutMe
//
//  Created by PASGON TEXTILE on 13.10.23.
//

import UIKit

final class InfoNavigationController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView! {
        didSet {
            myImage.layer.cornerRadius = myImage.frame.height / 2
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!    
    @IBOutlet weak var companyLabel: UILabel!
    
    var person: Person!
    var company: Company!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        departmentLabel.text = company.department
        positionLabel.text = company.position
        companyLabel.text = company.title
        myImage.image = UIImage(named: person.photo)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioNavViewController else { return }
        bioVC.person = person
    }
}
  
