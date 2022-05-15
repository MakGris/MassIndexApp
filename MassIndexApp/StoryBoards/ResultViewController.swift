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
    @IBOutlet var bodyTypesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       bodyTypesImage.image = UIImage(named: "BodyTypes")
        
       showIndexMassType()
    }
    
    private func showIndexMassType(){
        if result <= 18.5 {
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a deficit ")
        } else if result <= 30 && result > 18.5 {
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a normal ")
        } else if result > 30 {
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a obesity ")

        }
    }
    
    @IBAction func showWorkoutPressed() {
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


