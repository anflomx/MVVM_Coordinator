//
//  OnboardingView.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import SwiftUI

struct OnboardingView: View {
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
            ScaledImageView(name: "sim1")
                .tag(0)
            ScaledImageView(name: "sim2")
                .tag(1)
            ScaledImageView(name: "sim3")
                .tag(2)
            Button("Done") {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black
            .ignoresSafeArea(.all))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: {})
    }
}
