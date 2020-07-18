//
//  TableViewExpandableCell.swift
//  MaintainableTableView
//
//  Created by VenD on 17/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

class TableViewExpandableCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
}

extension TableViewExpandableCell: TableViewCellProtocol {
    func populate(with data: TableViewCellModelProtocol) {
        if let data = data as? TableViewExpandableCellModel {
            descriptionLabel.text = data.description
            titleLabel.text = data.title
            descriptionLabel.isHidden = !data.isExpanded
        }
    }
}
