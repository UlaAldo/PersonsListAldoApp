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
        fullNameLabel.text = account.title
        phoneLabel.text = account.phone
        mailLabel.text = account.mail
    }


}

