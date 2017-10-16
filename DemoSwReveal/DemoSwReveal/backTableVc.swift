//
//  backTableVc.swift
//  DemoSwReveal
//
//  Created by Mehul Solanki on 16/10/17.
//  Copyright © 2017 sufalam. All rights reserved.
//

import Foundation
class backTableVc: UITableViewController {
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "index path\(indexPath.row)"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row <= 5
        {
            let obj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let navController = UINavigationController(rootViewController: obj)
            navController.setViewControllers([obj], animated:true)
            navController.navigationBar.isHidden = true
            self.revealViewController().setFront(navController, animated: true)
            self.revealViewController().setFrontViewPosition(FrontViewPosition.left, animated: true)

        }else{
            let obj = self.storyboard?.instantiateViewController(withIdentifier: "secViewController") as! secViewController
            let navController = UINavigationController(rootViewController: obj)
            navController.setViewControllers([obj], animated:true)
            navController.navigationBar.isHidden = true

            self.revealViewController().setFront(navController, animated: true)
            self.revealViewController().setFrontViewPosition(FrontViewPosition.left, animated: true)

        }
    }
}
