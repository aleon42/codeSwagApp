//
//  CategoryCell.swift
//  coderSwag
//
//  Created by Albert Leon on 1/19/19.
//  Copyright © 2019 Albert Leon. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews (category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
