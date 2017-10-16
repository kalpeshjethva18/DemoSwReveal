//
//  ViewController.swift
//  DemoSwReveal
//
//  Created by Mehul Solanki on 16/10/17.
//  Copyright © 2017 sufalam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.revealViewController().rearViewRevealWidth = 62
        
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnOpenAction(_ sender: UIButton) {
        
//        let revealController: SWRevealViewController? = revealViewController()
//        revealController?.revealToggle(animated: true)
        
        
        let objSec = self.storyboard?.instantiateViewController(withIdentifier: "secViewController") as! secViewController
        self.navigationController?.pushViewController(objSec, animated: true)


    }
    

}

