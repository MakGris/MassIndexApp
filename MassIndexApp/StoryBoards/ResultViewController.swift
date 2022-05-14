//
//  ResultViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: Double!

    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String(Int(result))
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
