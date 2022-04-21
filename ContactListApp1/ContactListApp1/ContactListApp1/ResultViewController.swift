//
//  ResultViewController.swift
//  ContactListApp1
//
//  Created by Vemula,Ajay Kumar on 4/21/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var phoneNumOutlet: UILabel!
        
        @IBOutlet weak var emailOutlet: UILabel!
        
    var phoneNum = 66052812345
    
    var email = "ajay1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumOutlet.text = "\(phoneNum)"
        emailOutlet.text = email
        

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
