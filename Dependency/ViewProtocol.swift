//
//  View.swift
//  Dependency
//
//  Created by Lalit Bagga on 2019-04-15.
//  Copyright © 2019 Lalit Bagga. All rights reserved.
//

import Foundation

protocol ViewProtocol {
    func getTextFromTextField() -> String
    func setTextToLabel(_ label: String)
}

protocol ViewProtocolActionListener {
    func set(view: ViewProtocol?)
    func onGoButtonPressed()
}
