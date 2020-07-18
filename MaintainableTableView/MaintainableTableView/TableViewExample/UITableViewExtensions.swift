//
//  UITableViewExtensions.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func register(nibName: String) {
        register(nibName: nibName, withReuseCellIdentifier: nibName)
    }
    
    func register(nibName: String, withReuseCellIdentifier: String) {
        let nib = UINib(nibName: nibName, bundle: .main)
        register(nib, forCellReuseIdentifier: withReuseCellIdentifier)
    }
}
