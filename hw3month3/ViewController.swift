//
//  ViewController.swift
//  hw3month3
//
//  Created by Nurjamal Mirbaizaeva on 6/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var regionTextField: UITextField!
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var eye: UIButton!
    var isHidden = true
    
    @IBAction func signin(_ sender: Any) {
        let vc = TableViewController()
        let email = textFieldName?.text ?? ""
        let region = regionTextField?.text ?? ""
        vc.region = region
        vc.email = email
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func createAccount(_ sender: Any) {
        
        let createAccount = CreateAccountViewController()
        self.navigationController?.pushViewController(createAccount, animated: true)
    }
    @IBAction func eye(_ sender: Any) {
        if isHidden{
            eye.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            textFieldPassword.isSecureTextEntry = false
        } else {
            eye.setImage(UIImage(systemName: "eye"), for: .normal)
            textFieldPassword.isSecureTextEntry = true
        }
        isHidden = !isHidden
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

