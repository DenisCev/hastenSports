//
//  SportsMenListViewController.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 03/12/2018.
//  Copyright (c) 2018 Denis. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class SportsMenListViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: SportsMenListPresenterInterface!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
	
}

// MARK: - Extensions -

extension SportsMenListViewController: SportsMenListViewInterface {
    func reloadData() {
        tableView.reloadData()
    }
    
}

extension SportsMenListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectItem(at: indexPath)
    }
}

extension SportsMenListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let mySection = presenter.section(at: section)
        return mySection.header
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems()
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SportsMenListCell", for: indexPath) as! SportsMenListCell
        let item = presenter.item(at: indexPath)
        cell.configure(with: item)
        return cell
    }
    
    
}
