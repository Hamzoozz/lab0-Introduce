//
//  ViewController.swift
//  Introduce
//
//  Created by Hamza Banyhany on 8/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fnametext: UITextField!
    @IBOutlet weak var lnametext: UITextField!
    @IBOutlet weak var snametext: UITextField!

    
    @IBOutlet weak var yearsegment: UISegmentedControl!
    
    @IBOutlet weak var numberofpetslabel: UILabel!
    @IBOutlet weak var petstepper: UIStepper!
    @IBOutlet weak var morepetswitch: UISwitch!
    
    
    
    @IBAction func stepperaction(_ sender: UIStepper) {
        
        numberofpetslabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceaction(_ sender: UIButton) {
        
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearsegment.titleForSegment(at: yearsegment.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(fnametext.text!) \(lnametext.text!) and I attend \(snametext.text!). I am currently in my \(year!) year and I own \(numberofpetslabel.text!) dogs. It is \(morepetswitch.isOn) that I want more pets."
        
     // Creates the alert where we pass in our message, which our introduction.
            let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
            
            // A way to dismiss the box once it pops up
            let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
            
            // Passing this action to the alert controller so it can be dismissed
            alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

