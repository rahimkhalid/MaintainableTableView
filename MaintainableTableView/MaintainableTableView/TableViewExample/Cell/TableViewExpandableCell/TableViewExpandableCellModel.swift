//
//  TableViewExpandableCellModel.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation

struct TableViewExpandableCellModel: TableViewCellModelProtocol {
    var cellIdentifier: String = "TableViewExpandableCell"
    var title: String
    var description: String
    var isExpanded: Bool
    
    init(with title: String, description: String, isExpanded: Bool = false) {
        self.title = title
        self.description = description
        self.isExpanded = isExpanded
    }
}
