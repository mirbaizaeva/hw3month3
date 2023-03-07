//
//  TableViewController.swift
//  hw3month3
//
//  Created by Nurjamal Mirbaizaeva on 6/3/23.
//

import UIKit

class TableViewController: UIViewController {

    static let reusId = String(describing: TableViewController.self)
    
    @IBOutlet weak var tableView: UITableView!
    
    public var email: String?
    public var region: String?

    var person:[Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
    }
    private func initData() {
        person.append(Person(name: email!, image: "person.fill", descript: region!, phone: "0703454234"))
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id, for: indexPath) as! TableViewCell
        let model = person[indexPath.row]
        cell.display(item: model)
        return cell
    }
    
    
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = SecondViewController()
        secondVC.namee = person[indexPath.row].name
        secondVC.lastNamee = person[indexPath.row].descript
        secondVC.phonee = person[indexPath.row].phone
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}


