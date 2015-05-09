//
//  CarDetailViewController.swift
//  iTableView
//
//  Created by Martin Guilbaud on 06/05/2015.
//  Copyright (c) 2015 tintamarre. All rights reserved.
//

import UIKit


class CarDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var vBrand: String = ""
    var vDescription: String = ""
    
    @IBOutlet weak var carBrandModel: UITextField!

    @IBOutlet weak var carDescription: UITextField!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "doneSegue" {
            vBrand = carBrandModel.text!
            vDescription = carDescription.text!
        }
    }


    
    

}
