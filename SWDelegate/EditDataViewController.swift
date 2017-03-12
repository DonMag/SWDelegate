//
//  EditDataViewController.swift
//  SWDelegate
//
//  Created by Donald Magnusson on 3/12/17.
//  Copyright © 2017 Don Mag. All rights reserved.
//

import UIKit

protocol EditDataDelegate {
	func didTapSave(returnedData:[String:String])
}

class EditDataViewController: UIViewController {
	
	@IBOutlet weak var passedDataView: UITextView!
	@IBOutlet weak var changedDataView: UITextView!
	
	@IBOutlet weak var btnSaveUpdate: UIButton!
	
	var delegate: EditDataDelegate?
	
	var theDataDict: [String:String] = [:]
	var saveButtonTitle: String = "SAVE"
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
    }

	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		
		self.fillDataField(0)
		self.fillDataField(1)
		
		btnSaveUpdate.setTitle(saveButtonTitle, forState: UIControlState())
		
	}
	
	func fillDataField(whichField: Int) -> Void {
		
		if theDataDict.keys.count > 0 {
			
			let nm = theDataDict["name"] ?? ""
			let ph = theDataDict["phone"] ?? ""
			let em = theDataDict["email"] ?? ""
			
			if whichField == 0 {

				passedDataView.text = "Name: " + nm + "\nPhone: " + ph + "\nEmail: " + em
    
			} else {
				
				changedDataView.text = "Name: " + nm + "\nPhone: " + ph + "\nEmail: " + em

			}
			
		} else {
			
			// theDataDict is empty, which means no data was passed...
			if whichField == 0 {
				
				passedDataView.text = "Name:\nPhone:\nEmail:"
    
			} else {
				
				changedDataView.text = "Name:\nPhone:\nEmail:"
				
			}
			
		}
	}
	
	@IBAction func changeDataTapped(sender: AnyObject) {
		if let btn = sender as? UIButton {
			let cap = btn.titleLabel?.text
			
			if cap == "Name" {

				let nm = RandomName().randName()
				theDataDict["name"] = nm

			}
			
			if cap == "Phone" {
				
				let p1 = arc4random_uniform(900) + 100
				let p2 = arc4random_uniform(9000) + 1000
				let ph = "212-\(p1)-\(p2)"
				theDataDict["phone"] = ph
				
			}
			
			if cap == "Email" {
				
				let p1 = arc4random_uniform(90000) + 10000
				let em = "id\(p1)@domain.com"
				theDataDict["email"] = em
				
			}
			
			self.fillDataField(1)
			
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

	
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
