//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Adam Myhre on 2018-05-08.
//  Copyright © 2018 undergalaxie.com. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important { taskLabel.text = "❗️\(task.name)" }
        else { taskLabel.text = task.name }
    }

    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}
