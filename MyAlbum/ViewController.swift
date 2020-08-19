//
//  ViewController.swift
//  MyAlbum
//
//  Created by Minseok Bang on 2020/08/17.
//  Copyright © 2020 Minseok Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    @IBOutlet var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()

    }

    @IBAction func showAlert(_ sender: Any) {
        priceLabel.text = "₩\(currentValue)"
        let message:String = "가격은 ₩\(currentValue) 입니다."
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {action in
            self.refresh()
        })
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
 
        
        
    }
    
    func refresh() {
        let randomPrice = arc4random_uniform(100000) + 1
        currentValue = Int(randomPrice)
        priceLabel.text = "₩\(currentValue)"
    }
}


