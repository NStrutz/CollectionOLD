//
//  AddViewController.swift
//  Collections
//
//  Created by Nic-Alexander Strutz on 07.01.23.
//

import UIKit

class AddViewController: UIViewController {
    
    var score = 0
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Yes" {
            score = score + 1
        }
        else {
            score = score - 1
        }
    }
    
    @IBAction func AddDone(_ sender: UIButton) {
        //performSegue(withIdentifier: "DoneButton", sender: self)
    }
    

    @IBAction func AddBack(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DoneButton" {
            let destinationVC = segue.destination as? MainViewController
            if let name = nameTextField.text {
                destinationVC?.name = name
                destinationVC?.score = score
            }
        }
    }
}
