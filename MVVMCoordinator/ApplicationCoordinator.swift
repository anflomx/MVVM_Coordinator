//
//  ApplicationCoordinator.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import Foundation
import UIKit
import SwiftUI

class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    var childCoordinators = [Coordinator]()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
//        let onboardingCoordinator = OnboardingCoordinator()
//        onboardingCoordinator.start()
//        self.childCoordinators = [onboardingCoordinator]
//        window.rootViewController = onboardingCoordinator.rootViewController
//        //window.rootViewController = UIHostingController(rootView: ContentView()) //HomeViewController()
        
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        self.childCoordinators = [mainCoordinator]
        window.rootViewController = mainCoordinator.rootViewController
    }
}
