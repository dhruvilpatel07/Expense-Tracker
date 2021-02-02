//
//  SelectCategoryViewController.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2021-02-01.
//

import UIKit

class SelectCategoryViewController: UIViewController {

    var addNewEntryViewController: AddNewEntryViewController?
    @IBOutlet weak var tblSelectCategory: UITableView!
    
    let images: [String] = [
        "airplane.circle.fill",
        "car.circle.fill",
        "dollarsign.circle.fill",
        "bag.circle.fill",
        "house.circle.fill",
        "bag.circle.fill"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    /// Reseting form to start over
    @IBAction func btn_start_over(_ sender: Any) {
        _ = navigationController?.popToRootViewController(animated: true)
        addNewEntryViewController?.resetForm()
    }
    

}

extension SelectCategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        images.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomAddNewEntrySelectCategoryCell
        let index = indexPath.row
        cell.configure_cell(categoryName: images[index])
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
}

class CustomAddNewEntrySelectCategoryCell: UITableViewCell{
    @IBOutlet weak var lblCategoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //Setting up cell items
    func configure_cell(categoryName: String) {
        lblCategoryName.text = categoryName
    }
    
}
