//
//  CatsDetailView.swift
//  Cats
//
//  Created by Elisha Narida on 6/8/22.
//

import SwiftUI

struct CatsDetailView: View {
    let data: Cat
    var body: some View {
        HStack {
            if let imageUrl = data.url,
               let name = data.breeds?.first?.name,
               let origin = data.breeds?.first?.origin {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }.frame(width: 100, height: 100)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 5) {
                    Text(name)
                        .font(.system(size: 18))
                    Text(origin)
                        .font(.system(size: 14))
                }
            }
        }
    }
}
