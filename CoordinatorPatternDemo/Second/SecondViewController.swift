//
//  SecondViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, Storyboarded {
    
    weak var coordinator: Coordinator?
    weak var context: Context?
    var viewModel: SecondViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoSubSecond(_ sender: Any) {
        context?.initialize(coordinator: SubSecondCoordinator(context: context!))
    }
}
