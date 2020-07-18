//
//  TableViewCellWithLabelModel.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation

struct TableViewCellWithLabelModel: TableViewCellModelProtocol {
    var cellIdentifier: String = "TableViewCellWithLabel"
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
