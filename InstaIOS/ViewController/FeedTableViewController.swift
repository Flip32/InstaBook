//
//  FeedTableViewController.swift
//  InstaIOS
//
//  Created by Filipe Lopes on 23/09/21.
//

import UIKit

class FeedTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FeedTableViewCell.register(in: tableView)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.KReuseIdentifier, for: indexPath) as! FeedTableViewCell
        
        cell.setup(with: nil)
        
        return cell
    }
}
