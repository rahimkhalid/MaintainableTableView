//
//  TableViewExampleViewModel.swift
//  MaintainableTableView
//
//  Created by VenD on 18/07/2020.
//  Copyright © 2020 Venturedive. All rights reserved.
//

import Foundation

typealias TableViewModelOutput = (TableViewExampleViewModel.Output) -> ()

struct TableViewExampleViewModel {
    var items: [TableViewCellModelProtocol] = []
    var output: TableViewModelOutput?
    
    var numberOfItems: Int {
        return items.count
    }
    
    mutating func viewModelDidLoad() {
        items = [
            TableViewCellWithLabelModel(title: "I am a simple title label cell"),
            TableViewExpandableCellModel(with: "I am a simple expandable cell", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            TableViewCellWithImageAndLabelModel(title: "I am a simple Image Title cell", imageName: "sampleImage")
        ]
        
        output?(.reloadData)
    }
    
    func getItem(at index: Int) -> TableViewCellModelProtocol {
        return items[index]
    }
    
    mutating func didTapItem(at index: Int) {
        if var viewModel = getItem(at: index) as? TableViewExpandableCellModel {
            viewModel.isExpanded = !viewModel.isExpanded
            items[index] = viewModel
        }
        output?(.reloadRowAt(index: index))
    }
    
    enum Output {
        case reloadData
        case reloadRowAt(index: Int)
    }
}
