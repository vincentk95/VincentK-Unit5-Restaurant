//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Vincent on 09/03/2018.
//  Copyright © 2018 Native App Studio. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    
    @IBOutlet weak var timeRemainingLabel: UILabel!
    
    var minutes: Int!
    
    /// Sets the label
    override func viewDidLoad() {
        super.viewDidLoad()
        timeRemainingLabel.text = "Your wait time is \(minutes!) minutes."
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
