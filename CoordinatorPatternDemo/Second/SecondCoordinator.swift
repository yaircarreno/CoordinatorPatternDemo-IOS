//
//  SecondCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

class SecondCoordinator: Coordinator {
    
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = SecondViewController.instantiate()
        viewController.viewModel = SecondViewModel()
        viewController.coordinator = self
        viewController.context = context
        context?.push(viewController: viewController)
    }
}
