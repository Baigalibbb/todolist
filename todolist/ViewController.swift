//
//  ViewController.swift
//  todolist
//
//  Created by Tenizbayev Bolat on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var a: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func addtask(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let taskName = a.text!
        
        var newTask = TaskItem()
        
        newTask.name = taskName
        
        var taskarray:[TaskItem] = []
        
        do{
            if let data = defaults.data(forKey: "taskItemArray"){
                var array = try JSONDecoder().decode([TaskItem].self, from: data)
                
                array.append(newTask)
                
                let encodedata = try JSONEncoder().encode(array)
                
                defaults.set(encodedata, forKey: "taskItemArray")
            } else{
                let encodedata = try JSONEncoder().encode([newTask])
                
                defaults.set(encodedata, forKey: "taskItemArray")
            }
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
        
        a.text = ""
    }
    
}

