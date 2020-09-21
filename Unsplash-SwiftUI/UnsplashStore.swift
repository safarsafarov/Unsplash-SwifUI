//
//  UnsplashStore.swift
//  Unsplash-SwiftUI
//
//  Created by Safar Safarov on 2020/9/20.
//

import Foundation
import Combine


class UnsplashStore {
    static let url = URL(string: "")
    var models: [Model] = []
    
    func fetch() {
        var request: URLRequest? = nil
        URLSession.shared.dataTask(with: UnsplashStore.url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            guard let models = try? Unsplash(data: data) else {
                return
            }
            let viewModels = models
                .map {$0.user}
                .compactMap(Model.init)
            DispatchQueue.main.async {
                self.models = viewModels
            }
        }
    }
}
