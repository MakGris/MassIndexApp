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
        
        photoWhatToDo.layer.borderWidth = 2
        photoWhatToDo.layer.borderColor = UIColor.black.cgColor
        photoWhatToDo.contentMode = .scaleAspectFit
        photoWhatToDo.layer.cornerRadius = 50
        photoWhatToDo.clipsToBounds = true
        
        photoWhatToDo.image = UIImage(named: nameTranning.picture)
        
        infoTraning.text = nameTranning.description
    }
}

