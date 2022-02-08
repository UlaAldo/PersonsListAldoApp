//
//  SectionListViewController.swift
//  PersonsListAldoApp
//
//  Created by Юлия Алдохина on 06/02/22.
//

import UIKit

class SectionListViewController: UITableViewController {

    var persons: [Person] = []
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].title
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
//        content.text = person.title
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone.down.fill")
        } else {
            content.text = person.mail
            content.image = UIImage(systemName: "mail")
        }
       
        cell.contentConfiguration = content
        return cell
    }
    

}
