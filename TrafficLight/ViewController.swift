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
    
    private var viewArray: [UIView?] = []
      private var currentIndex = 0
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
          swichButton.setTitle("START", for: .normal)
          
          redSignalView.layer.cornerRadius = redSignalView.frame.width / 2
          yellowSignalView.layer.cornerRadius = yellowSignalView.frame.width / 2
          greenSignalView.layer.cornerRadius = greenSignalView.frame.width / 2
          
          redSignalView.alpha = 0.3
          yellowSignalView.alpha = 0.3
          greenSignalView.alpha = 0.3
          swichButton.layer.cornerRadius = 10
          
          viewArray.append(redSignalView)
          viewArray.append(yellowSignalView)
          viewArray.append(greenSignalView)
          
      }
      
      
      @IBAction func buttonAction(_ sender: UIButton) {
          guard currentIndex >= 0 && currentIndex < viewArray.count  else{
              return
          }
          for item in viewArray {
              item?.alpha = 0.3
          }
          viewArray[currentIndex]?.alpha = 1.0
          swichButton.setTitle("NEXT", for: .normal)
          currentIndex += 1
          
          if currentIndex == viewArray.count {
          currentIndex = 0
          }
      }
    
   
}
