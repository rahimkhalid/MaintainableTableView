//
//  TableViewCellWithImageAndLabel.swift
//  MaintainableTableView
//
//  Created by VenD on 17/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

class TableViewCellWithImageAndLabel: UITableViewCell {

    @IBOutlet weak var titleLabelView: UILabel!
    @IBOutlet weak var leadingImageView: UIImageView!
}

extension TableViewCellWithImageAndLabel: TableViewCellProtocol {
    func populate(with data: TableViewCellModelProtocol) {
        if let data = data as? TableViewCellWithImageAndLabelModel {
            titleLabelView.text = data.title
            leadingImageView.image = UIImage(named: data.imageName)
        }
    }
}

