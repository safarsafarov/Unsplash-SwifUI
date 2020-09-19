//
//  Models.swift
//  Unsplash-SwiftUI
//
//  Created by Safar Safarov on 2020/9/20.
//

import SwiftUI

struct Model: Identifiable {
    let id: String
    let name: String
    let bio: String
    var image: UIImage
    
    init(user: User) {
        self.id = user.id
        self.name = user.name ?? <#default value#>
        self.bio = user.bio ?? "No Bio"
        if let url = URL(string: user.profileImage!.medium) {
            let data = try! Data(contentsOf: url)
            self.image = UIImage(data: data) ?? UIImage(imageLiteralResourceName: "Image")
        } else {
            self.image = UIImage(imageLiteralResourceName: "Image")
        }
        
    }
}
