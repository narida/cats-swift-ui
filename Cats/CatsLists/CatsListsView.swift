//
//  CatsListsView.swift
//  Cats
//
//  Created by Elisha Narida on 6/8/22.
//

import SwiftUI

struct CatsListsView: View {
    
    @ObservedObject var viewModel = CatsListsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.cats, id: \.id) { data in
                NavigationLink(destination: CatsInfoView(cat: data)) {
                    CatsDetailView(data: data)
                }
            }
        }.navigationBarTitle("Cats")
            .onAppear {
                self.viewModel.getCats()
            }
    }
}

struct CatsListsView_Previews: PreviewProvider {
    static var previews: some View {
        CatsListsView()
    }
}
