//
//  OnboardingCoordinator.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import Combine
import SwiftUI

class OnboardingCoordinator: Coordinator {
    var rootViewController = UIViewController()
    
    let hasSeenOnboarding: CurrentValueSubject<Bool,Never>
    
    init(hasSeenOnboarding: CurrentValueSubject<Bool, Never>) {
        self.hasSeenOnboarding = hasSeenOnboarding
    }
    
    func start() {
        let view = OnboardingView { [weak self] in
            self?.hasSeenOnboarding.send(true)
        }
        rootViewController = UIHostingController(rootView: view)
    }
}
