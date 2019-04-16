//
//  ViewModel.swift
//  Dependency
//
//  Created by Lalit Bagga on 2019-04-15.
//  Copyright © 2019 Lalit Bagga. All rights reserved.
//

import Foundation

class ViewModel  {
    var localView: ViewProtocol?
    
}

extension ViewModel: ViewProtocolActionListener {
    func set(view: ViewProtocol?) {
          self.localView = view
    }
    
    func onGoButtonPressed() {
        print("Go is Pressed")
        print(localView?.setTextToLabel(localView?.getTextFromTextField() ?? "") ?? "")
    }
    
}


