//
//  ViewController.swift
//  WeatherAppPhaseOne
//
//  Created by Warners on 4/20/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        searchTextField.delegate = self
    }

    @IBAction func searchTextField(_ sender: UITextField) {
        print("Text field changed: \(searchTextField.text!)")
        searchTextField.endEditing(true)
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        print("Search button pressed: \(searchTextField.text!)")
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldShouldReturn receives: \(searchTextField.text!)")
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchTextField.text != "" {
            return true
        } else {
            searchTextField.placeholder = "SEARCH HERE!!!!!!!!!"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        // LOOK UP WEATHER HERE
        
        searchTextField.text = ""
    }
}

