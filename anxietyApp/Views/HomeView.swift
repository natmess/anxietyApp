//
//  HomeView.swift
//  anxietyApp
//
//  Created by Nathalie  on 7/11/19.
//  Copyright © 2019 Nathalie. All rights reserved.
//

import UIKit

class HomeView: UIView {

    lazy var searchBar: UISearchBar = {
//https://stackoverflow.com/questions/31413127/how-to-change-border-and-icons-in-search-bar-swift
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search Sounds"
        searchBar.barTintColor = .black
        var textFieldInsideSearchBar = searchBar.value(forKey: "searchField") as? UITextField
        textFieldInsideSearchBar?.textColor = .white
        textFieldInsideSearchBar?.backgroundColor = #colorLiteral(red: 0.4518418312, green: 0.4167238474, blue: 0.4038034678, alpha: 1)
        return searchBar
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        self.backgroundColor = .white
        setUpSearchBar()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpSearchBar() {
        addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
            ])
    }

}
