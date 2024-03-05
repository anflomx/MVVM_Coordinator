//
//  ApplicationCoordinator.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import UIKit
import SwiftUI
import Combine

class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    var childCoordinators = [Coordinator]()
    
    let hasSeenOnboarding = CurrentValueSubject<Bool,Never>(false)
    var subscriptions = Set<AnyCancellable>()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        hasSeenOnboarding.sink { [weak self] hasSeen in
            if hasSeen {
                let mainCoordinator = MainCoordinator()
                mainCoordinator.start()
                self?.childCoordinators = [mainCoordinator]
                self?.window.rootViewController = mainCoordinator.rootViewController
            } else if let hasSeenOnboarding = self?.hasSeenOnboarding {
                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeenOnboarding)
                onboardingCoordinator.start()
                self?.childCoordinators = [onboardingCoordinator]
                self?.window.rootViewController = onboardingCoordinator.rootViewController
                //window.rootViewController = UIHostingController(rootView: ContentView()) //HomeViewController()
            }
        }.store(in: &subscriptions)
    }
}
