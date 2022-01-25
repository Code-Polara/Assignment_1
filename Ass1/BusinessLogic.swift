//
//  BusinessLogic.swift
//  Ass1
//
//  Created by user204571 on 1/20/22.
//

import Foundation

class Calculator
{
    var Result = 0
    var Step = 1
    
    func Add()
    {
        Result = Result + Step
    }
    
    func Subtract()
    {
        Result = Result - Step
        if(Result<0){
            Result=0
        }
    }
    
    func Reset()
    {
        Result = 0
    }
    
    func ChangeStep()
    {
        if(Step == 1)
        {
            Step = 2
        }
        else
        {
            Step = 1
        }
    }
}
