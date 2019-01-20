//
//  Category.swift
//  coderSwag
//
//  Created by Albert Leon on 1/19/19.
//  Copyright © 2019 Albert Leon. All rights reserved.
//

import Foundation

struct Category {
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
