//
//  AddNewEntryViewController.swift
//  Expense Tracker
//
//  Created by Dhruvil Patel on 2020-12-26.
//

import UIKit

class AddNewEntryViewController: UIViewController {

    @IBOutlet weak var sg_Expense_or_Income: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }
    @IBAction func segmentIndexChanged(_ sender: Any) {
        //sg_Expense_or_Income.selectedSegmentIndex <-- use this to check
        
    }
    
    @IBAction func btn_next_page(_ sender: Any) {
        
    }
    
    //Reset the form/new entry
    func resetForm() {
        sg_Expense_or_Income.selectedSegmentIndex = 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        /// - If destination view controller is SelectCategoryViewController
//        if let vc = segue.destination as? SelectCategoryViewController {
//            switch sg_Expense_or_Income.selectedSegmentIndex {
//            case 0:
//                vc.text = "Expense"
//            case 1:
//                vc.text = "Income"
//            default:
//                break
//            }
//            vc.addNewEntryViewController = self
//        }
        
        
    }
}
