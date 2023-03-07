//
//  TableViewCell.swift
//  hw3month3
//
//  Created by Nurjamal Mirbaizaeva on 6/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let id = String(describing: TableViewCell.self)
    
    @IBOutlet private weak var labelName: UILabel!
    @IBOutlet private weak var imagePerson: UIImageView!
    @IBOutlet private weak var labledescript: UILabel!
    
    func display(item: Person) {
    labelName.text = item.name
    imagePerson.image = UIImage(systemName: "person.fill")
    labledescript.text = item.descript
    }
     
}
