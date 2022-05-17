//
//  ResultViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: Double!
    var trainings: [Training]!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var bodyTypesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodyTypesImage.image = UIImage(named: "BodyTypes")
        showIndexMassType()
    }
    
    private func showIndexMassType(){
        if result <= 18.5 {
            trainings = Training.getTraining(for: .weightGain)
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a deficit ")
        } else if result <= 30 && result > 18.5 {
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a normal ")
            trainings = Training.getTraining(for: .weightSupport)
        } else if result > 30 {
            trainings = Training.getTraining(for: .weightLoss)
            resultLabel.text = String("Your body mass index is \(Int(result)) , there is a obesity ")
        }
    }
    
    @IBAction func showWorkoutPressed() {
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trainingVC = segue.destination as? TraningViewController else { return }
        trainingVC.trainings = trainings
    }
}


