//
//  ViewController.swift
//  TrafficLight
//
//  Created by Оксана Попова on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var swichButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignalView.layer.cornerRadius = 60
        yellowSignalView.layer.cornerRadius = 60
        greenSignalView.layer.cornerRadius = 60
        
        redSignalView.alpha = 0.3
        yellowSignalView.alpha = 0.3
        greenSignalView.alpha = 0.3
        swichButton.layer.cornerRadius = 10
        
        
        }
    
    @IBAction func buttonAction() {
        
    }
    
   
}
