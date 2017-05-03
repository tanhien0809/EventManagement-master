//
//  ViewController.swift
//  EventManagement
//
//  Created by Hien on 4/27/17.
//  Copyright © 2017 Hien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet dynamic weak var Day: UILabel!
    @IBOutlet dynamic weak var NameEvent: UILabel!
    @IBOutlet dynamic weak var Detail: UILabel!
    var Day_Of_Week = String()
    var Name_Event = String()
    var Detail_Event = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Day.text = Day_Of_Week
        NameEvent.text = Name_Event
        Detail.text = Detail_Event
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

