//
//  TableViewCellWithLabel.swift
//  MaintainableTableView
//
//  Created by VenD on 17/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

class TableViewCellWithLabel: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
}

extension TableViewCellWithLabel: TableViewCellProtocol {
    func populate(with data: TableViewCellModelProtocol) {
        if let data = data as? TableViewCellWithLabelModel {
            titleLabel.text = data.title
        }
    }
}
