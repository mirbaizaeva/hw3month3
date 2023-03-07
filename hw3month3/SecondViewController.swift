//
//  SecondViewController.swift
//  hw3month3
//
//  Created by Nurjamal Mirbaizaeva on 6/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    static let reId = String(describing: SecondViewController.self)
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lastname: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    
    var namee = ""
    var lastNamee = "''"
    var phonee = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = namee
        lastname.text = lastNamee
        phone.text = phonee
 
    }
}
