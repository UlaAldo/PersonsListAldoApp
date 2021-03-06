//
//  TabBarViewController.swift
//  PersonsListAldoApp
//
//  Created by Юлия Алдохина on 07/02/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segueOnVC()
    }
    
    private func segueOnVC() {
        let person = Person.getPerson()
        guard let personVC = viewControllers?.first as? PersonsListViewController else {return}
        guard let sectionVC = viewControllers?.last as? SectionListViewController else {return}
        
        personVC.persons = person
        sectionVC.persons = person
    }

}
