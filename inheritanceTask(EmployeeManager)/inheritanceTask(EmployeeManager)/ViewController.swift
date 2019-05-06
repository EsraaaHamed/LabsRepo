//
//  ViewController.swift
//  inheritanceTask(EmployeeManager)
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finalSalaryLabel: UILabel!
    @IBAction func getEmployeeSalaryBtn(_ sender: UIButton) {
        let employee = Employee()
        employee.salary = Float(salaryTf.text!)
        finalSalaryLabel.text = String(employee.calcSalary());
    }
    @IBAction func getManagerSalaryBtn(_ sender: UIButton) {
        
        let manager = Manager()
        manager.salary = Float(salaryTf.text!)
        finalSalaryLabel.text = String(manager.calcSalary());
        
    }
    @IBOutlet weak var salaryTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

