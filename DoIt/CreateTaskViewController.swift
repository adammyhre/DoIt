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
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create a task from the outlet information
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context : context)
        
        task.name = taskNameTextfield.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        navigationController!.popViewController(animated: true)
    }

}
