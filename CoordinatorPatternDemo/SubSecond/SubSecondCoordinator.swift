//
//  SubSecondCoordinator.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

class SubSecondCoordinator: Coordinator {
    
    var context: Context?
    
    init(context: Context) {
        self.context = context
    }
    
    func start() {
        let viewController = SubSecondViewController.instantiate()
        viewController.viewModel = SubSecondViewModel()
        viewController.coordinator = self
        context?.push(viewController: viewController)
    }
}
