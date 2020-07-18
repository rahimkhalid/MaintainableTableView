//
//  TableViewExampleViewController.swift
//  MaintainableTableView
//
//  Created by VenD on 17/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import UIKit

class TableViewExampleViewController: UIViewController {

    var viewModel: TableViewExampleViewModel! = TableViewExampleViewModel()
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            setupTableView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        viewModel.viewModelDidLoad()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        func registerNib() {
            tableView.register(nibName: "TableViewExpandableCell")
            tableView.register(nibName: "TableViewCellWithImageAndLabel")
            tableView.register(nibName: "TableViewCellWithLabel")
        }
        
        registerNib()
    }
}

//Tableview delegate and datasource methods
extension TableViewExampleViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = viewModel.getItem(at: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.cellIdentifier) as? TableViewCellProtocol
        cell?.populate(with: cellModel)
        return cell as? UITableViewCell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didTapItem(at: indexPath.row)
    }
}

//Bind ViewController with ViewModel
extension TableViewExampleViewController {
    func bindViewModel() {
        viewModel.output = { output in
            switch output {
            case .reloadData:
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .reloadRowAt(let index):
                DispatchQueue.main.async {
                    self.tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .automatic)
                }
            }
        }
    }
}
