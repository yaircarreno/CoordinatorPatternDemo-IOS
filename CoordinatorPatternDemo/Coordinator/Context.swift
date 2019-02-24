//
//  Context.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import UIKit

class Context {
    
    weak var coordinator: Coordinator?
    let navigationController:UINavigationController
    
    init(with navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    func initialize(coordinator: Coordinator) {
        self.coordinator = coordinator
        coordinator.start()
    }
    
    func push(viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }
}
