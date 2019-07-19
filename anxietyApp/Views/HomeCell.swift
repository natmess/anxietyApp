//
//  HomeCell.swift
//  anxietyApp
//
//  Created by Nathalie  on 7/11/19.
//  Copyright © 2019 Nathalie. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    lazy var title: UILabel = {
        var title = UILabel()
        title.text = "Hello"
        title.textColor = .magenta
        return title
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupTitleLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupTitleLabel() {
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
//            title.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            title.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20)
            ])
    }

    

}
