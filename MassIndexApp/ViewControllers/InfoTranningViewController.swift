//
//  InfoTranningViewController.swift
//  MassIndexApp
//
//  Created by Артур Сахбиев on 14.05.2022.
//

import UIKit

class InfoTranningViewController: UIViewController {
    
    var nameTranning: Training!

    @IBOutlet var photoWhatToDo: UIImageView!
    
    @IBOutlet var infoTraning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoWhatToDo.image = UIImage(named: nameTranning.picture)
        
        infoTraning.text = nameTranning.description
        
        

    }
    

}

