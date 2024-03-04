//
//  ScaledImageView.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 04/03/24.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .tag(0)
    }
}

//struct ScaledImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScaledImageView()
//    }
//}
