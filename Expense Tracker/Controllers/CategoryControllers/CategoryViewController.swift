//
//  CategoryViewController.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-26.
//

import UIKit

class CategoryViewController: UIViewController {

    
    @IBOutlet weak var search_bar_category: UISearchBar!
    @IBOutlet weak var tbl_view_category: UITableView!
    
    let info_title = [
        ["transportation", "Car Insurance", "Salary"],
        [ "Clothes", "Home Rent" , "Groceries"]
    ]
    let titleCategory = ["Food", "Entertainment"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        remove_searchbar_background()
        self.hideKeyboardWhenTappedAround()
        
        //Code for UIRefreshControl()
        tbl_view_category.refreshControl = UIRefreshControl()
        tbl_view_category.refreshControl?.addTarget(self, action: #selector(handleRefreshControl), for: .valueChanged)
    }
    
    //Method to handle refresh when table view is pulled down
    @objc func handleRefreshControl(){
        //update table view
        tbl_view_category.reloadData()
        
        DispatchQueue.main.async {
            self.tbl_view_category.refreshControl?.endRefreshing()
        }
    }
    
    /// Removes backgroud color of searchbar and adds white color tint
    func remove_searchbar_background() {
        search_bar_category.backgroundColor = UIColor.clear
        search_bar_category.searchTextField.textColor = UIColor.black
        search_bar_category.isTranslucent = true
        search_bar_category.searchTextField.backgroundColor = UIColor.white
        search_bar_category.setBackgroundImage(UIImage(), for: .any, barMetrics: .default)

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        search_bar_category.text = ""
    }
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info_title[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCategoryViewTableViewCell
        
       // let index = indexPath.row
        cell.configure_cell(img: UIImage(systemName: "airplane.circle.fill")!, category_name: info_title[indexPath.section][indexPath.row])
        return cell
    }
    
    /// - selected row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    /// - number of section
    func numberOfSections(in tableView: UITableView) -> Int {
        return info_title.count
    }
    
    /// - Section height
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    /// - Sets section header title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleCategory[section]
    }
    
    /// - Changes background color of section header
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.systemBackground
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.secondaryLabel
    }
}
