//
//  ViewController.swift
//  Світлофор
//
//  Created by Іван Штурхаль on 30.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: elements
    
    enum ColorLight {
        case red, yellow, green
    }
    
    @IBOutlet var colorPanelView: UIStackView!
    @IBOutlet var colorRedView: UIView!
    @IBOutlet var colorYellowView: UIView!
    @IBOutlet var colorGreenView: UIView!
    @IBOutlet var pressButton: UIButton!
    
    var lightOn: CGFloat = 1.0
    var lightOff: CGFloat = 0.5
    
    var colorOfCircle = ColorLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createStackView()
        
    }
    
    //MARK: functions
    
    func createStackView() {
        colorRedView.layer.cornerRadius = 70
        colorYellowView.layer.cornerRadius = 70
        colorGreenView.layer.cornerRadius = 70
    }

    //MARK: button
    
    @IBAction func push(_ sender: Any) {
        
        switch colorOfCircle {
        case .red:
            colorGreenView.alpha = lightOff
            colorRedView.alpha = lightOn
            colorOfCircle = .yellow
        case .yellow:
            colorRedView.alpha = lightOff
            colorYellowView.alpha = lightOn
            colorOfCircle = .green
        case .green:
            colorYellowView.alpha = lightOff
            colorGreenView.alpha = lightOn
            colorOfCircle = .red
        }
        
    }
    
    
    
}

