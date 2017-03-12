//
//  RandomName.swift
//  SWDelegate
//
//  Created by Donald Magnusson on 3/12/17.
//  Copyright © 2017 Don Mag. All rights reserved.
//

import Foundation

class RandomName {
	
	var aNames: [String] = [
	
	"James",		"Mary",
	"John",		"Patricia",
	"Robert",		"Jennifer",
	"Michael",		"Elizabeth",
	"William",		"Linda",
	"David",		"Barbara",
	"Richard",		"Susan",
	"Joseph",		"Jessica",
	"Thomas",		"Margaret",
	"Charles",		"Sarah",
	"Christopher",		"Karen",
	"Daniel",		"Nancy",
	"Matthew",		"Betty",
	"Anthony",		"Dorothy",
	"Donald",		"Lisa",
	"Mark",		"Sandra",
	"Paul",		"Ashley",
	"Steven",		"Kimberly",
	"George",		"Donna",
	"Kenneth",		"Carol",
	"Andrew",		"Michelle",
	"Joshua",		"Emily",
	"Edward",		"Helen",
	"Brian",		"Amanda",
	"Kevin",		"Melissa",
	"Ronald",		"Deborah",
	"Timothy",		"Stephanie",
	"Jason",		"Laura",
	"Jeffrey",		"Rebecca",
	"Ryan",		"Sharon",
	"Gary",		"Cynthia",
	"Jacob",		"Kathleen",
	"Nicholas",		"Shirley",
	"Eric",		"Amy",
	"Stephen",		"Anna",
	"Jonathan",		"Angela",
	"Larry",		"Ruth",
	"Scott",		"Brenda",
	"Frank",		"Pamela",
	"Justin",		"Virginia",
	"Brandon",		"Katherine",
	"Raymond",		"Nicole",
	"Gregory",		"Catherine",
	"Samuel",		"Christine",
	"Benjamin",		"Samantha",
	"Patrick",		"Debra",
	"Jack",		"Janet",
	"Alexander",		"Carolyn",
	"Dennis",		"Rachel",
	"Jerry",		"Heather",
	"Tyler",		"Maria",
	"Aaron",		"Diane",
	"Henry",		"Emma",
	"Douglas",		"Julie",
	"Peter",		"Joyce",
	"Jose",		"Frances",
	"Adam",		"Evelyn",
	"Zachary",		"Joan",
	"Walter",		"Christina",
	"Nathan",		"Kelly",
	"Harold",		"Martha",
	"Kyle",		"Lauren",
	"Carl",		"Victoria",
	"Arthur",		"Judith",
	"Gerald",		"Cheryl",
	"Roger",		"Megan",
	"Keith",		"Alice",
	"Jeremy",		"Ann",
	"Lawrence",		"Jean",
	"Terry",		"Doris",
	"Sean",		"Andrea",
	"Albert",		"Marie",
	"Joe",		"Kathryn",
	"Christian",		"Jacqueline",
	"Austin",		"Gloria",
	"Willie",		"Teresa",
	"Jesse",		"Hannah",
	"Ethan",		"Sara",
	"Billy",		"Janice",
	"Bruce",		"Julia",
	"Bryan",		"Olivia",
	"Ralph",		"Grace",
	"Roy",		"Rose",
	"Jordan",		"Theresa",
	"Eugene",		"Judy",
	"Wayne",		"Beverly",
	"Louis",		"Denise",
	"Dylan",		"Marilyn",
	"Alan",		"Amber",
	"Juan",		"Danielle",
	"Noah",		"Brittany",
	"Russell",		"Madison",
	"Harry",		"Diana",
	"Randy",		"Jane",
	"Philip",		"Lori",
	"Vincent",		"Mildred",
	"Gabriel",		"Tiffany",
	"Bobby",		"Natalie",
	"Johnny",		"Abigail",
	"Howard",		"Kathy"
	
	]
	
	func randName() -> String {
		let n = UInt32(aNames.count)
		let i = Int(arc4random_uniform(n))
		
		return aNames[i]
	}
	
}