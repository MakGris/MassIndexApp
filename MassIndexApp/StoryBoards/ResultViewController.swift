//
//  ResultViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var bodyTypesImage: UIImageView!
    
    var result: Double!
    
    private var trainings: [Training]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyTypesImage.image = UIImage(named: "BodyTypes")
        showIndexMassType()
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trainingVC = segue.destination as? TraningViewController else { return }
        trainingVC.trainings = trainings
    }
}

extension ResultViewController {
    private func showIndexMassType(){
        if result <= 18.5 {
            bodyTypesImage.image = UIImage(named: "underweightMass.jpg")
            trainings = Training.getTraining(for: .weightGain)
            resultLabel.text = String("Your body mass index is \(Int(result)), you are underweight!")
        } else if result <= 30 && result > 18.5 {
            bodyTypesImage.image = UIImage(named: "normalMass.jpg")
            resultLabel.text = String("Your body mass index is \(Int(result)), you have a normal weight!")
            trainings = Training.getTraining(for: .weightSupport)
        } else if result > 30 {
            bodyTypesImage.image = UIImage(named: "overwheightMass.jpg")
            trainings = Training.getTraining(for: .weightLoss)
            resultLabel.text = String("Your body mass index is \(Int(result)), you are overweight!")
        }
    }
}


