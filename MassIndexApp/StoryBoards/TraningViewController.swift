//
//  TraningViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 14.05.2022.
//

import UIKit

class TraningViewController: UITableViewController {

    let namesTranning = ["Tranning1","Tranning2","Tranning3","Tranning4","Tranning5",]
    let numbersOfApproaches = ["3x15","3x14","3x13","3x12","3x11",]
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("Hello")
    }


    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        namesTranning.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoTraningID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let nameTranning = namesTranning[indexPath.row]
        let numberOfApproaches = numbersOfApproaches[indexPath.row]
        
        content.text = nameTranning
        content.secondaryText = numberOfApproaches
        
        cell.contentConfiguration = content
    

        return cell
    }
    

    
    // MARK: - Navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let infoTranningVC = segue.destination as? InfoTranningViewController else {return}
         guard let indexPath = tableView.indexPathForSelectedRow else {return}
         let nameTranning = namesTranning[indexPath.row]
         infoTranningVC.nameTranning = nameTranning
      
     }

}
