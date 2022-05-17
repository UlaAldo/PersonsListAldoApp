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
        content.image = UIImage(systemName: "person.circle")

        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "show", sender: person)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accountVC = segue.destination as? AccountPersonViewController else { return }
        accountVC.account = sender as? Person
    }

}
