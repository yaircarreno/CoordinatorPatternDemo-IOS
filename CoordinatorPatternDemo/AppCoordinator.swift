//
//  AppCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

class AppCoordinator: Coordinator {
    
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = MainViewController.instantiate()
        viewController.viewModel = MainViewModel()
        viewController.coordinator = self
        viewController.context = context
        context?.push(viewController: viewController)
    }
}
