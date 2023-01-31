//
//  ViewController.swift
//  Homework 2.02
//
//  Created by Виктория Страдзина on 31.01.2023.
//

    import UIKit

    class ViewController: UIViewController {

        @IBOutlet var redLight: UIView!
        @IBOutlet var yellowLight: UIView!
        @IBOutlet var greenLight: UIView!
        @IBOutlet var trafficLightButton: UIButton!
        
        private var currentLight = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            redLight.layer.cornerRadius = 75
            greenLight.layer.cornerRadius = 75
            yellowLight.layer.cornerRadius = 75
            trafficLightButton.layer.cornerRadius = 10
        }

        @IBAction func trafficLightSwitch(_ sender: AnyObject) {
            switch currentLight {
            case 0:
                redLight.alpha = 1
                trafficLightButton.setTitle("NEXT", for: .normal)
                currentLight += 1
            case 1:
                redLight.alpha = 0.3
                yellowLight.alpha = 1
                currentLight += 1
            case 2:
                yellowLight.alpha = 0.3
                greenLight.alpha = 1
                currentLight += 1
            case 3:
                greenLight.alpha = 0.3
                trafficLightButton.setTitle("START", for: .normal)
                currentLight = 0
            default:
                break
            }
        }
    }


