//
//  ViewController.swift
//  PersonsListAldoApp
//
//  Created by Юлия Алдохина on 06/02/22.
//

import UIKit

class AccountPersonViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var account: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for label in [fullNameLabel, phoneLabel, mailLabel] {
            label?.layer.masksToBounds = true
            label?.layer.cornerRadius = 15
        }
        
        fullNameLabel.text = account.title
        phoneLabel.text = "Phone: \(account.phone)"
        mailLabel.text = "Email: \(account.mail)"
        
    }


}

