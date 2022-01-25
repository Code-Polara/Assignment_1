//
//  ViewController.swift
//  Ass1
//
//  Created by user204571 on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelResult: UILabel!
    @IBOutlet weak var StepButton: UIButton!
    @IBOutlet weak var PlusButton: UIButton!
    @IBOutlet weak var MinusButton: UIButton!
    @IBOutlet weak var ResetButton: UIButton!    
    @IBOutlet weak var AppLogo: UIImageView!
    var MyCalcuculator = Ass1.Calculator()
    override func viewDidLoad() {
        LabelResult.text = "0"
        
        super.viewDidLoad()
        
        SetConstraints()
        
        // Do any additional setup after loading the view.
    }
    
    override open var shouldAutorotate: Bool{return false}
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask{return .portrait}

    @IBAction func Reset(_ sender: Any) {
        MyCalcuculator.Reset()
        LabelResult.text = String(MyCalcuculator.Result)
    }
    
    @IBAction func Step(_ sender: Any) {
        MyCalcuculator.ChangeStep()
        StepButton.setTitle("Step = " + String(MyCalcuculator.Step),for: .normal)
    }

    @IBAction func Add(_ sender: Any) {
        MyCalcuculator.Add()
        LabelResult.text = String(MyCalcuculator.Result)
    }
    
    @IBAction func Subtract(_ sender: Any) {
        MyCalcuculator.Subtract()
        LabelResult.text = String(MyCalcuculator.Result)
    }
    
    func SetConstraints(){
        
        //Set translatesAutoresizingMaskIntoConstraints to false for all elements on the view
        PlusButton.translatesAutoresizingMaskIntoConstraints = false
        MinusButton.translatesAutoresizingMaskIntoConstraints = false
        StepButton.translatesAutoresizingMaskIntoConstraints = false
        ResetButton.translatesAutoresizingMaskIntoConstraints = false
        LabelResult.translatesAutoresizingMaskIntoConstraints = false
        AppLogo.translatesAutoresizingMaskIntoConstraints = false
        
        
        //StepButton Constraints
        let StepButtonLeftConstraint = StepButton.leftAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leftAnchor,constant: 50)
        StepButtonLeftConstraint.isActive = true
        let StepButtonBottomConstraint = StepButton.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor,constant: -100)
        StepButtonBottomConstraint.isActive = true
        let StepButtonRightConstraint = StepButton.rightAnchor.constraint(equalTo: view.centerXAnchor)
        StepButtonRightConstraint.isActive = true
        let StepButtonHeightConstraint = StepButton.heightAnchor.constraint(equalToConstant: 50)
        StepButtonHeightConstraint.isActive = true
        
        //Reset Button Constraints
        let ResetButtonRightConstraint = ResetButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,constant: -50)
        ResetButtonRightConstraint.isActive = true
        let ResetButtonBottomConstraint = ResetButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -100)
        ResetButtonBottomConstraint.isActive = true
        let ResetButtonLeftConstraint = ResetButton.leftAnchor.constraint(equalTo: view.centerXAnchor)
        ResetButtonLeftConstraint.isActive = true
        let ResetButtonHeightConstraint = ResetButton.heightAnchor.constraint(equalToConstant: 50)
        ResetButtonHeightConstraint.isActive = true
        
        //Plus Button Constraints
        let PlusButtonRightConstraint = PlusButton.rightAnchor.constraint(equalTo: view.centerXAnchor)
        PlusButtonRightConstraint.isActive = true
        let PlusButtonBottomConstraint = PlusButton.bottomAnchor.constraint(equalTo: StepButton.topAnchor)
        PlusButtonBottomConstraint.isActive = true
        let PlusButtonLeftConstraint = PlusButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor,constant: 50)
        PlusButtonLeftConstraint.isActive = true
        let PlusButtonHeightConstraint = PlusButton.heightAnchor.constraint(equalToConstant: 50)
        PlusButtonHeightConstraint.isActive = true
        
        //Minus Button Constraints
        let MinusButtonRightConstraint = MinusButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor,constant: -50)
        MinusButtonRightConstraint.isActive = true
        let MinusButtonBottomConstraint = MinusButton.bottomAnchor.constraint(equalTo: ResetButton.topAnchor)
        MinusButtonBottomConstraint.isActive = true
        let MinusButtonLeftConstraint = MinusButton.leftAnchor.constraint(equalTo: view.centerXAnchor)
        MinusButtonLeftConstraint.isActive = true
        let MinusButtonHeightConstraint = MinusButton.heightAnchor.constraint(equalToConstant: 50)
        MinusButtonHeightConstraint.isActive = true
        
        //Result label constraints
        let LabelResultRightConstraint = LabelResult.rightAnchor.constraint(equalTo: MinusButton.rightAnchor)
        LabelResultRightConstraint.isActive = true
        let LabelResultLeftConstraint = LabelResult.leftAnchor.constraint(equalTo: PlusButton.leftAnchor)
        LabelResultLeftConstraint.isActive = true
        let LabelResultBottomConstraint = LabelResult.bottomAnchor.constraint(equalTo: PlusButton.topAnchor,constant:0)
        LabelResultBottomConstraint.isActive = true
        let LabelResultHeightConstraint = LabelResult.heightAnchor.constraint(equalToConstant: 50)
        LabelResultHeightConstraint.isActive = true
        
        //App Logo constraints
        let LogoTopConstraint = AppLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 200)
        LogoTopConstraint.isActive=true
        let LogoCenterConstraint = AppLogo.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        LogoCenterConstraint.isActive=true
        
      
    }
    
}

