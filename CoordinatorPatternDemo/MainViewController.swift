//
//  ViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    weak var coordinator: Coordinator?
    weak var context: Context?
    var viewModel: MainViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoFirst(_ sender: Any) {
        context?.initialize(coordinator: FirstCoordinator(context: context!))
    }
    
    @IBAction func gotoSecond(_ sender: Any) {
        context?.initialize(coordinator: SecondCoordinator(context: context!))
    }
    
    @IBAction func gotoSubFirst(_ sender: Any) {
        context?.initialize(coordinator: SubFirstCoordinator(context: context!))
    }
}

