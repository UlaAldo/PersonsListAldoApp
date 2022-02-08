//
//  PersonsListViewController.swift
//  PersonsListAldoApp
//
//  Created by Юлия Алдохина on 06/02/22.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.title

        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accountVC = segue.destination as? AccountPersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        accountVC.account = persons[indexPath.row]
    }

}
