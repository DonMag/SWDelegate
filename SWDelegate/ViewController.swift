//
//  ViewController.swift
//  SWDelegate
//
//  Created by Donald Magnusson on 3/12/17.
//  Copyright © 2017 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EditDataDelegate {
	
	@IBOutlet weak var curDataField: UITextView!
	
	var theData: [String:String] = [
		"name":"Fred",
		"phone":"212-555-1212",
		"email":"id12345@domain.com"
	]

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		self.fillDataField()
	
	}

	func fillDataField() -> Void {
		let nm = theData["name"] ?? ""
		let ph = theData["phone"] ?? ""
		let em = theData["email"] ?? ""
		
		curDataField.text = "Name: " + nm + "\nPhone: " + ph + "\nEmail: " + em
	}

	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		
		if segue.identifier == "ChangeData" {

			if let vc = segue.destinationViewController as? EditDataViewController {
				
				vc.theDataDict = theData
				vc.saveButtonTitle = "UPDATE"
				vc.delegate = self
				
			}
			
		} else if segue.identifier == "GetNewData" {
			
			// we're not passing data if it's "Add"
			if let vc = segue.destinationViewController as? EditDataViewController {
				
				vc.saveButtonTitle = "SAVE"
				vc.delegate = self
				
			}
			
		}
		
	}

	func didTapSave(returnedData:[String:String]) {
		self.theData = returnedData
		self.fillDataField()
	}

	@IBAction func saveAndUnwindToDataVC(sender: UIStoryboardSegue) {
		if let vc = sender.sourceViewController as? EditDataViewController {
			
			self.theData = vc.theDataDict
			
			self.fillDataField()

		}
	}
	
	@IBAction func cancelAndUnwindToDataVC(sender: UIStoryboardSegue) {
		// if we want to do anything when Cancel is tapped
	}
	
}

