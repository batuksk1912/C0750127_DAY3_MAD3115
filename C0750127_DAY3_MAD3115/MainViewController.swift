//
//  MainViewController.swift
//  C0750127_DAY3_MAD3115
//
//  Created by Baturay Kayatürk on 2019-03-06.
//  Copyright © 2019 Lambton College. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lblAnimalName: UILabel!
    @IBOutlet var progressBar: UIView!
    
    @IBAction func stpAnimal(_ sender: UIStepper) {
        lblAnimalName.text = String(sender.value)
    }
    
    @IBAction func sldAnimal(_ sender: UISlider) {
        lblAnimalName.text = String(sender.value)
        
    }
    @IBOutlet weak var imgAnimal: UIImageView!
    @IBAction func segmentAnimal(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            lblAnimalName.text = "franco"
            imgAnimal.image = UIImage(named:"animal1.jpg")
        case 1:
            lblAnimalName.text = "mussolini"
            imgAnimal.image = UIImage(named:"animal2.jpg")
        default:
            print("Nothing")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
