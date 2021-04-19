//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Robyn Gungon on 4/13/21.
//

import UIKit

protocol ToDoCellDelegate: class {
    func chechmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!

    @IBAction func completeButtonTapped(_ sender: Any) {
        delegate?.chechmarkTapped(sender: self)
    }
}
