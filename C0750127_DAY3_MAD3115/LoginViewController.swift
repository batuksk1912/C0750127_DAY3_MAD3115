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
        let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "userName") {
            txtUserName.text = email
        }
        if let psw = userDefault.string(forKey: "userPassword") {
            txtPassword.text = psw
            swRememberMe.isOn = true
        }
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        if (txtUserName.text == username && txtPassword.text == password) {
            let userDefault = UserDefaults.standard
            if (swRememberMe.isOn) {
                userDefault.set(username, forKey: "userName")
                userDefault.set(password, forKey: "userPassword")
                print("Write code to save")
            } else {
                print("Remove all info")
                userDefault.removeObject(forKey: "userName")
                userDefault.removeObject(forKey: "userPassword")
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
