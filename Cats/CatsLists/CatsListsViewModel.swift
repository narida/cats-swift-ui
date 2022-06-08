//
//  CatsListsViewModel.swift
//  Cats
//
//  Created by Elisha Narida on 6/8/22.
//

import Combine
import SwiftUI

class CatsListsViewModel: ObservableObject {
    private var task: AnyCancellable?
    
    @Published var cats: [Cat] = []
    
    private let url = "https://api.thecatapi.com/v1/images/search?limit=10&has_breeds=true&include_breeds=true"
    
    func getCats() {
        guard let url = URL(string: url) else { return }
       task = NetworkManager.download(url: url)
           .decode(type: [Cat].self, decoder: JSONDecoder())
           .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (cats) in
               self?.cats = cats
               self?.task?.cancel()
           })
   }
}
