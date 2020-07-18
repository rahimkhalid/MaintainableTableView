//
//  TableViewCellWithImageAndLabelModel.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation

struct TableViewCellWithImageAndLabelModel: TableViewCellModelProtocol {
    var cellIdentifier: String = "TableViewCellWithImageAndLabel"
    
    var imageName: String
    var title: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
