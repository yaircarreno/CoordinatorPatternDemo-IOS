//
//  FirstCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

class FirstCoordinator: Coordinator {
    
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = FirstViewController.instantiate()
        viewController.viewModel = FirstViewModel()
        viewController.coordinator = self
        viewController.context = context
        context?.push(viewController: viewController)
    }
}
