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
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = UIHostingController(rootView: ContentView()) //HomeViewController()
    }
}
