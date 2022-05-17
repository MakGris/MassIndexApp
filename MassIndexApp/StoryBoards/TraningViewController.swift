//
//  TraningViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 14.05.2022.
//

import UIKit

class TraningViewController: UITableViewController {
    
    var trainings:[Training]!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trainings.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoTraningID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let nameTraining = trainings[indexPath.row].name
        let numberOfApproaches = "Кол-во подходов: \(trainings[indexPath.row].sets). Кол-во повторений: \(trainings[indexPath.row].reps)"
        
        content.text = nameTraining
        content.secondaryText = numberOfApproaches
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoTranningVC = segue.destination as? InfoTranningViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let nameTranning = trainings[indexPath.row]
        infoTranningVC.nameTranning = nameTranning
    }
    
}
