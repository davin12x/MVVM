//
//  ViewController.swift
//  Dependency
//
//  Created by Lalit Bagga on 2019-04-15.
//  Copyright © 2019 Lalit Bagga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    var actionListener: ViewProtocolActionListener?
    var viewProtocol: ViewProtocol?
    
    @IBAction func onButtonPressed(_ sender: Any) {
        actionListener?.onGoButtonPressed()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionListener?.set(view: self)
    }
}

extension ViewController: ViewProtocol {
    func getTextFromTextField() -> String {
        return textField.text ?? ""
    }
    
    func setTextToLabel(_ label: String) {
        self.label.text = label
    }
}


