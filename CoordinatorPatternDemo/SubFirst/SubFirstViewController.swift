//
//  SubFirstViewController.swift
//  CoordinatorPatternDemo
//
//  Created by Yair Carreno on 2/24/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

class SubFirstViewController: UIViewController, Storyboarded {
    
    weak var coordinator: Coordinator?
    weak var context: Context?
    var viewModel: SubFirstViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
