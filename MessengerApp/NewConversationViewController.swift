//
//  NewConversationViewController.swift
//  MessengerApp
//
//  Created by administrator on 08/01/2022.
//

import UIKit
import JGProgressHUD
import FirebaseAuth

class NewConversationViewController: UIViewController {
    
    private let spinner = JGProgressHUD(style: .dark)
    private let searchBar: UISearchBar = {
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search for Users..."
        
        return searchBar
        
    }()
    private let tableView: UITableView = {
        
        let table = UITableView()
        table.isHidden = true
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return table
        
    }()

    private let noResultsLabel: UILabel = {
        
        let label = UILabel()
        label.isHidden = true
        label.text = "No Results"
        label.textAlignment = .center
        label.textColor = .green
        label.font = .systemFont(ofSize: 21, weight: .medium)
        
        return label
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        view.backgroundColor = .white
        navigationController?.navigationBar.topItem?.titleView = searchBar
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cancel",style: .done,target: self,action: #selector(dismissSelf))

    // Do any additional setup after loading the view.
}
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
}

extension NewConversationViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
}

