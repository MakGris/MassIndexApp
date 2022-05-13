//
//  IndexMassViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 13.05.2022.
//

import UIKit

class IndexMassViewController: UIViewController {

    @IBOutlet var weightTF: UITextField!
    @IBOutlet var hightTF: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func nextButtonPressed() {
        guard let enterWeight = weightTF.text, !enterWeight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your weight")
            return
        }
        
        guard let enterHight = hightTF.text, !enterHight.isEmpty else {
            showAlert(with: "Oops", and: "You forgot enter your hight")
            return
        }
        
      
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
extension IndexMassViewController {
    private func getIndexMass(_ weight: Int , hight: Int) -> Double{
        Double(weight) / pow(Double(hight),2)
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
}


