//
//  Manager.swift
//  inheritanceTask(EmployeeManager)
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
class Manager : Person
{
    override func calcSalary () -> Float
    {
        return salary! * 2.0
    }
    
}
