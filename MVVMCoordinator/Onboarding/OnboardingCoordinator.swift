//
//  OnboardingCoordinator.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import Foundation
import SwiftUI

class OnboardingCoordinator: Coordinator {
    var rootViewController = UIViewController()
    
    func start() {
        let view = OnboardingView {
            
        }
        rootViewController = UIHostingController(rootView: view)
    }
}
