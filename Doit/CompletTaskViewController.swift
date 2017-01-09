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
    var task : Task? = nil

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        if task!.important {
            taskLable.text = "‼️\(task!.name!)"
            
        }
        else {
            
            taskLable.text = task!.name!
        }
    
    
    }
    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()

        navigationController!.popViewController(animated: true)
        
    }

    
}
