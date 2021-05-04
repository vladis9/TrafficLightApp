//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Vlad on 04.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.layer.cornerRadius = 105
        yellowTrafficLight.layer.cornerRadius = 105
        greenTrafficLight.layer.cornerRadius = 105
        startButton.layer.cornerRadius = 20
    }


}

