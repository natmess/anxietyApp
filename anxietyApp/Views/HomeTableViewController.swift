//
//  HomeTableViewController.swift
//  anxietyApp
//
//  Created by Nathalie  on 7/11/19.
//  Copyright © 2019 Nathalie. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(HomeCell.self, forCellReuseIdentifier: "homeCell")
        view.addSubview(homeView)
        self.title = "Soothe"
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as? HomeCell else {return UITableViewCell()}
        cell.title.text = "Hey"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return homeView
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

