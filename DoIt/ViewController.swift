//
//  ViewController.swift
//  DoIt
//
//  Created by Adam Myhre on 2018-05-07.
//  Copyright © 2018 undergalaxie.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
    }


}

