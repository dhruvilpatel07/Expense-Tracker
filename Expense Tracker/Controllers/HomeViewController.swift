//
//  ViewController.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-26.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let images: [UIImage] = [
        UIImage(systemName: "airplane.circle.fill")!,
        UIImage(systemName: "car.circle.fill")!,
        UIImage(systemName: "dollarsign.circle.fill")!,
        UIImage(systemName: "bag.circle.fill")!,
        UIImage(systemName: "house.circle.fill")!,
        UIImage(systemName: "bag.circle.fill")!
    ]
    let info_title: [String] = ["Fly to Paris", "Car Insurance", "Salary", "Clothes", "Home Rent" , "Groceries"]
    let date: [String] = ["Dec 1 at 2:00 PM", "Dec 18 at 8:00 PM", "Dec 19 at 2:00 AM", "Dec 22 at 11:00 PM", "Dec 27 at 9:00 AM", "Dec 30 at 2:00 PM"]
    let amount: [String] = ["- $540", "- $300", "+ $2000", "- $120", "- $900", "- $30"]
    let subCategory: [String] = ["Travel", "Car", "Salary", "Shopping", "Home", "Shopping"]
    let incomeOrExpense: [String] = ["Expense", "Expense", "Income", "Expense", "Expense", "Expense"]
    
    @IBOutlet weak var img_gradient_background: UIImageView!
    @IBOutlet weak var card_table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpBackground()
    }
    
    func setUpBackground(){
        img_gradient_background.layer.masksToBounds = true
        img_gradient_background.layer.cornerRadius = self.img_gradient_background.frame.height / 15.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCardTableViewCell
        let index = indexPath.row
        cell.backgroundColor = UIColor.clear
        cell.selectionStyle = .none
        cell.configure_cell(img: images[index], title: info_title[index], date: date[index], amount: amount[index], subCategory: subCategory[index], incomeOrExpense: incomeOrExpense[index])
        
        return cell
    }

}

