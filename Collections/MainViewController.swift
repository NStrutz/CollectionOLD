//
//  ViewController.swift
//  Collections
//
//  Created by Nic-Alexander Strutz on 06.01.23.
// Thats me

import UIKit

class MainViewController: UIViewController {

    var name : String = ""
    var score : Int = 0
    
    @IBOutlet weak var MainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue) {
        MainLabel.text = "Hello \(name) points is \(score)"
    }
}

