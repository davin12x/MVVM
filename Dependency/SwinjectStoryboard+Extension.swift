//
//  SwinjectStoryboard+Extension.swift
//  Dependency
//
//  Created by Lalit Bagga on 2019-04-16.
//  Copyright © 2019 Lalit Bagga. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import SwinjectAutoregistration

extension SwinjectStoryboard {
    
    @objc class func setup() {
        //defaultContainer.autoregister(Networking.self, initializer: HTTPNetworking.init)
        //defaultContainer.autoregister(PriceFetcher.self, initializer: BitcoinPriceFetcher.init)
        

        
        defaultContainer.storyboardInitCompleted(ViewController.self) { r, c in
            c.actionListener = r.resolve(ViewProtocolActionListener.self)
        }
        
        defaultContainer.register(ViewProtocolActionListener.self) { r in ViewModel() }
    }
}
