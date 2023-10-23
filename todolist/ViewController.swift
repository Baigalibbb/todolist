//
//  ViewController.swift
//  todolist
//
//  Created by Tenizbayev Bolat on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addtask(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let taskName = textfield.text!
        
        var newTask = TaskItem()
        
        newTask.name = taskName
        
        var taskarray:[TaskItem] = []
        
        do{
            
        } catch{
            print("unable")
        }
        
//        if let array = defaults.array(forKey: "taskItemArray"){
//            taskarray = array as! [TaskItem]
//            
//            taskarray.append(newTask)
//            
//            defaults.set(taskarray, forKey: "taskItemArray")
//        } else {
//            let array = [taskName]
//            defaults.set(taskarray, forKey: "taskItemArray")
//        }
        
//        var taskarray:[String] = []
//        
//        if let array = defaults.array(forKey: "taskArray"){
//            taskarray = array as! [String]
//            
//            taskarray.append(taskName)
//            
//            defaults.setValue(taskarray, forKey: "taskArray")
//        } else {
//            let array = [taskName]
//            defaults.setValue(array, forKey: "taskArray")
//        }
        
        textfield.text = ""
    }
    
}

