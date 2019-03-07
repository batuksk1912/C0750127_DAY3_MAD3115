//
//  LoginViewController.swift
//  C0750127_DAY3_MAD3115
//
//  Created by Baturay Kayatürk on 6.03.2019.
//  Copyright © 2019 Lambton College. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var swRememberMe: UISwitch!
    
    private let username: String = "batu@kayaturk.com"
    private let password: String = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        if (txtUserName.text == username && txtPassword.text == password) {
            if (swRememberMe.isOn) {
                print("save")
            }
            print("Logged In")
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = sb.instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
            self.navigationController?.pushViewController(homeVC, animated: true)
            homeVC.userName = username
        } else {
            let alert = UIAlertController(title: "Error", message: "Username or Password Wrong!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
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
