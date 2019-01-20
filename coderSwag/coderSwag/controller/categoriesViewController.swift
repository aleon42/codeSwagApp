//
//  ViewController.swift
//  coderSwag
//
//  Created by Albert Leon on 1/19/19.
//  Copyright © 2019 Albert Leon. All rights reserved.
//

import UIKit

class categoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.updateViews(category: category)
        return cell
    } else {
        return CategoryCell()
        }
    }
    
}

