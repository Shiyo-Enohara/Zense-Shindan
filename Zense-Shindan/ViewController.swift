//
//  ViewController.swift
//  Zense-Shindan
//
//  Created by Shiyo Enohara on 2020/06/22.
//  Copyright © 2020 enohara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //segue動作時に実行
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toZenseShindan" {
            if let nextVC = segue.destination as? ShindanViewController {
                nextVC.titleText = "あなたの前世"
            }
        } else if segue.identifier == "toRaiseShindan" {
            if let nextVC = segue.destination as? ShindanViewController {
                nextVC.titleText = "あなたの来世"
            }
            
        }
        
        
    }

    @IBAction func zenseStart(_ sender: Any) {
        //前世診断への画面遷移実行
        self.performSegue(withIdentifier: "toZenseShindan", sender: nil)
    }
    
    @IBAction func raiseStart(_ sender: Any) {
        //来世診断への画面遷移実行
        self.performSegue(withIdentifier: "toRaiseShindan", sender: nil)
    }
    
    
    
}

