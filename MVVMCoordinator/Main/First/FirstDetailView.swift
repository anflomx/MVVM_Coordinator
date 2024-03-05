//
//  FirstDetailView.swift
//  MVVMCoordinator
//
//  Created by Antonio Flores on 05/03/24.
//

import SwiftUI

struct FirstDetailView: View {
    
    @ObservedObject var viewModel: FirstTabViewModel
    
    var body: some View {
        VStack {
            Text("First Detail")
            TextField("name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("email", text: $viewModel.email).textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FirstDetailView(viewModel: FirstTabViewModel())
    }
}
