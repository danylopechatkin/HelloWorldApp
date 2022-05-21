//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Danylo Pechatkin on 19/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.isHidden = true // для того что бы скрыть label Hello World
        startButton.layer.cornerRadius = 10 // скругление углов startButton
        helloWorldLabel.textColor = .systemRed
         
    }

    @IBAction func startPressed() { // кнопка действия startbutton
        helloWorldLabel.isHidden.toggle()  // при нажатии startButton появляется label - HelloWorld (но мы не можем скрыть обратн)для этого применяем toggle
        if helloWorldLabel.isHidden {
            startButton.setTitle("Show text", for: .normal)
        } else { startButton.setTitle("Hide text", for: .normal)
        }
    }
    
}

