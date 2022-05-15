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
    }


    // MARK: - Table view data source

    //override func numberOfSections(in tableView: UITableView) -> Int {
     //   namesTranning.count
   // }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        namesTranning.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoTraningID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let nameTranning = namesTranning[indexPath.row]
        
        content.text = nameTranning
        
        cell.contentConfiguration = content
    

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let infoTranningVC = segue.destination as? InfoTranningViewController else {return}
         guard let indexPath = tableView.indexPathForSelectedRow else {return}
         let nameTranning = namesTranning[indexPath.row]
         infoTranningVC.nameTranning = nameTranning
      
     }

}
