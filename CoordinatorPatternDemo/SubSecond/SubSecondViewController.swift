//
//  SubSecondViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

class SubSecondViewController: UIViewController, Storyboarded {
    
    weak var coordinator: Coordinator?
    var viewModel: SubSecondViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
