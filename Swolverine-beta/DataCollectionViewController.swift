//
//  DataCollectionViewController.swift
//  Swolverine-beta
//
//  Created by Erick Cochea on 8/14/20.
//  Copyright © 2020 Erick Cochea. All rights reserved.
//

import UIKit

class DataCollectionViewController: UIViewController {
    
    @IBOutlet weak var exc_name_field: UITextField!
    @IBOutlet weak var sets_field: UITextField!
    @IBOutlet weak var reps_field: UITextField!
    @IBOutlet weak var type_name: UILabel!
    @IBOutlet weak var weight_field: UITextField!
    
    var exc_name = ""
    var sets_num = 0
    var reps_num = 0
    var weight = 0
    var is_weight_used = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func send_info(_ sender: Any) {
        self.exc_name = exc_name_field.text!
        self.sets_num = Int(sets_field.text!) ?? 0
        self.reps_num = Int(reps_field.text!) ?? 0
        
        if type_name.text! == "BODYWEIGHT" {
            performSegue(withIdentifier: "data_parser_bw", sender: self)
        }
        else{
            self.is_weight_used = true
            self.weight = Int(weight_field.text!) ?? 0
            performSegue(withIdentifier: "data_parse", sender: self)
            
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CounterViewController
        vc.exc_of_name = self.exc_name
        vc.num_reps = self.reps_num
        vc.num_sets = self.sets_num
        vc.is_weight = self.is_weight_used
        vc.num_weight = self.weight
        
    }
    
}
