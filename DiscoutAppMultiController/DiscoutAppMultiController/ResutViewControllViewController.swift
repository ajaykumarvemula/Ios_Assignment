//
//  ResutViewControllViewController.swift
//  DiscoutAppMultiController
//
//  Created by Vemula,Ajay Kumar on 3/22/22.
//

import UIKit

class ResutViewControllViewController: UIViewController {

    @IBOutlet var EnteredAmountOutlet: UILabel!
    @IBOutlet var EnteredDiscRateOutlet: UILabel!
    @IBOutlet var PriceAfterDisc: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterCalc = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        EnteredAmountOutlet.text! = EnteredAmountOutlet.text! + amount;
        
        EnteredDiscRateOutlet.text! = EnteredDiscRateOutlet.text! + discRate
        
        PriceAfterDisc.text! = PriceAfterDisc.text! + priceAfterCalc
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
