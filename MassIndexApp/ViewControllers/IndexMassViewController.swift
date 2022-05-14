//
//  IndexMassViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class IndexMassViewController: UIViewController {
    
    var result: Double!
    var weight: Double!
    var hight: Double!
    

    @IBOutlet var weightTF: UITextField!
    @IBOutlet var hightTF: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
    }
    
    @IBAction func nextButtonPressed() {
         weight = Double(weightTF.text!)!
        hight = Double(hightTF.text!)!
        
        getIndexMass(weight: weight, hight: hight)
        
        
        guard let enterWeight = weightTF.text, !enterWeight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your weight")
            return
        }
        
        guard let enterHight = hightTF.text, !enterHight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your hight")
            return
        }
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        resultVC.result = result
        
   }
    

}
extension IndexMassViewController {
    private  func getIndexMass(weight: Double , hight: Double){
        result = weight / Double(pow((hight / 100) ,2))
    }
    
    private func showAlert(with title: String, and massage: String){
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { _ in
           // self.weightTF.text = ""
           // self.hightTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    //struct
}


