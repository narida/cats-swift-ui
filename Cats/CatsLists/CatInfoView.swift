//
//  CatsInfoView.swift
//  Cats
//
//  Created by Elisha Narida on 6/8/22.
//

import Foundation
import SwiftUI

struct CatsInfoView: View {
    var cat: Cat
    
    var body: some View {
        if let url = cat.url,
           let description = cat.breeds?.first?.breedDescription,
           let origin = cat.breeds?.first?.origin,
           let name = cat.breeds?.first?.name,
           let wiki = URL(string: cat.breeds?.first?.wikipediaURL ?? "") {
            NavigationView {
                ScrollView(.vertical) {
                    VStack {
                        AsyncImage(url: URL(string: url)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }.frame(width: 200, height: 200)
                            .cornerRadius(10)
                        VStack(alignment: .leading, spacing: 5) {
                            HStack(alignment: .top, spacing: 3) {
                                Text("Country:")
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                Text(origin)
                                    .font(.system(size: 16))
                            }
                            Text(description)
                                .font(.system(size: 14))
                                .padding(.bottom)
                            Link("See on Wiki", destination: wiki)
                        }.padding()
                        Spacer()
                    }
                }
            }.navigationBarTitle(name)
        }
    }
}
