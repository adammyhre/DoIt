//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Adam Myhre on 2018-05-08.
//  Copyright © 2018 undergalaxie.com. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextfield: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        let task = Task()
        
        task.name = taskNameTextfield.text!
        task.important = importantSwitch.isOn
        
        // Append new task to array in previous viewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
