//
//  TableViewCellProtocol.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation

protocol TableViewCellProtocol {
    func populate(with data: TableViewCellModelProtocol)
}

protocol TableViewCellModelProtocol {
    var cellIdentifier: String { get }
}
