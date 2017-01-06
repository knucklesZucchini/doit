//
//  CompletTaskViewController.swift
//  Doit
//
//  Created by Mark Krawczuk on 1/5/17.
//  Copyright © 2017 Mark Krawczuk. All rights reserved.
//

import UIKit

class CompletTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLable: UILabel!
    var task = Task()
    var previousVC = TasksViewController()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskLable.text = task.name
    
        if task.important {
            taskLable.text = "‼️\(task.name)"
            
        }
        else {
            
            taskLable.text = task.name
        }
    
    
    }
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

    
}
