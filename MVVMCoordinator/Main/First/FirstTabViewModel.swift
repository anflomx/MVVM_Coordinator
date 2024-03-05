//
//  FirstTabViewModel.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 05/03/24.
//

import Foundation

class FirstTabViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
}
