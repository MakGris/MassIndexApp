//
//  IndexMassViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class IndexMassViewController: UIViewController {
    
    @IBOutlet var weightTF: UITextField!
    @IBOutlet var heightTF: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    
    private var result: Double!
    private var weight: Double!
    private var height: Double!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
    }
    
    @IBAction func nextButtonPressed() {
        guard let enterWeight = weightTF.text, !enterWeight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your weight")
            return
        }
        guard let enterHeight = heightTF.text, !enterHeight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your height")
            return
        }
        
        weight = Double(weightTF.text!)
        height = Double(heightTF.text!)
        
        getIndexMass(weight: weight, height: height)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        resultVC.result = result
    }
}

extension IndexMassViewController {
    private  func getIndexMass(weight: Double , height: Double) {
        result = weight / Double(pow((height / 100) ,2))
    }
    
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


