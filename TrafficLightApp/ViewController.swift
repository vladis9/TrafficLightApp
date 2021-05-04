//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Vlad on 04.05.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.alpha = lightIsOff
        yellowTrafficLight.alpha = lightIsOff
        greenTrafficLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 20
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        yellowTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        greenTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            greenTrafficLight.alpha = lightIsOff
            redTrafficLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redTrafficLight.alpha = lightIsOff
            yellowTrafficLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowTrafficLight.alpha = lightIsOff
            greenTrafficLight.alpha = lightIsOn
            currentLight = .red
        }
    }
    
}

