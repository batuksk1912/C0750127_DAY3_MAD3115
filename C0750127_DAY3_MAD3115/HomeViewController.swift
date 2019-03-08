//
//  HomeViewController.swift
//  C0750127_DAY3_MAD3115
//
//  Created by Baturay Kayatürk on 6.03.2019.
//  Copyright © 2019 Lambton College. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var userName : String?
    @IBOutlet weak var lblUserName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let e = userName {
            self.lblUserName.text = e
        }
        
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Dynamic Title"
        self.navigationController?.hidesBarsOnTap = true
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
        
        let userDefault = UserDefaults.standard
        if let userMail = userDefault.string(forKey: "userName") {
            print(userMail)

        }
        if let password = userDefault.string(forKey: "userPassword") {
            print(password)
        }
        
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
