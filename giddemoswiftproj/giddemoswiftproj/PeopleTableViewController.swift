//
//  PeopleTableViewController.swift
//  giddemoswiftproj
//
//  Created by Sofi on 20.02.2021.
//

import UIKit



struct User {
    var name: String
    
    static func people () -> [User] {
        [User(name: "Вася" ),
         User(name: "Петя"),
         User(name: "Коля")
        ]
    }
    
}



class PeopleTableViewController: UITableViewController {

    
    var data3 = User.people()
   
    
      


    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        
        
        }

        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            data3.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PeopleTableViewCell
           
            let person = data3[indexPath.row]
            
            cell.peopleNameLabel.text = person.name
            cell.iconImageView.image = UIImage(systemName: "person.crop.square.fill")
            
            return cell
        }
        
        
        
        
        
        
           
        
}
