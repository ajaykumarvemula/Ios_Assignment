//
//  ViewController.swift
//  DiscoutAppMultiController
//
//  Created by Vemula,Ajay Kumar on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var AmountOutlet: UITextField!
    @IBOutlet var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDiscountButtonC(_ sender: UIButton) {
        var amount = Double(AmountOutlet.text!)
        
        var discountRate = Double(DiscountRateOutlet.text!)
        
        priceAfterDiscount = amount! - (amount!*discountRate!/100)
    }
    
    
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        
        if transition == "resultSegue"{
            //make result view controller as a destination
            
            var destination = segue.destination as!
             ResutViewControllViewController
            
            destination.amount = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            
            destination.priceAfterCalc = String(priceAfterDiscount)
        }
    }
}

