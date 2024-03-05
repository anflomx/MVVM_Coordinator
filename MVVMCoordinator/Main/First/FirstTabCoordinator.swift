//
//  FirstTabCoordinator.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 05/03/24.
//

import Foundation
import UIKit

class FirstTabCoordinator: Coordinator {
    var rootViewController: UINavigationController
    
    init() {
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    lazy var firstViewController: FirstViewController = {
        let vc = FirstViewController()
        vc.title = "First Title"
        return vc
    }()
    
    func start() {
        rootViewController.setViewControllers([firstViewController], animated: false)
    }
}
