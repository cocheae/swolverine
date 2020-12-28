//
//  CounterViewController.swift
//  Swolverine-beta
//
//  Created by Erick Cochea on 8/13/20.
//  Copyright © 2020 Erick Cochea. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    var exc_of_name = ""
    var num_reps = 0
    var num_sets = 0
    var num_weight = 0

    var is_weight = false

    var set_completed = 0
    
    @IBOutlet weak var exc_name_replacer: UILabel!
    @IBOutlet weak var reps_num: UILabel!
    @IBOutlet weak var completed_set: UILabel!
    @IBOutlet weak var sets_num: UILabel!
    @IBOutlet weak var weight_num: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        exc_name_replacer.text = exc_of_name
        reps_num.text = "Reps: \(num_reps)"
        completed_set.text = String(set_completed)
        sets_num.text = String(num_sets)
        if is_weight{
            weight_num.text = "Weight: \(num_weight)"
        }
        
        
        self.hideKeyboardWhenTappedAround()
            
    }
    
    

    
    
    @IBAction func increment(_ sender: Any) {
        if String(set_completed) != sets_num.text {
            set_completed += 1
            completed_set.text = String(set_completed)
        }
        

    }
    
    @IBAction func decrement(_ sender: Any) {
        if set_completed > 0 {
            set_completed -= 1
            completed_set.text = String(set_completed)
        }
        else{
            completed_set.text = String(0)
        }
    }
    
}
