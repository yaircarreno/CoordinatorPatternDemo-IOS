//
//  FirstViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, Storyboarded {
    
    weak var coordinator: Coordinator?
    weak var context: Context?
    var viewModel: FirstViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gotoSubFirst(_ sender: Any) {
        context?.initialize(coordinator: SubFirstCoordinator(context: context!))
    }
}
