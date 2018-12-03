//
//  SportsMenListCell.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 04/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import UIKit

class SportsMenListCell: UITableViewCell {
    
    @IBOutlet weak var sportMenImage: UIImageView!
    @IBOutlet weak var sportMenName: UILabel!
    @IBOutlet weak var sportMenDate: UILabel!
    @IBOutlet weak var sportMenSurName: UILabel!
    
    func configure(with item: Player){
        //sportMenImage.image = 
        sportMenName.text = item.name
        sportMenDate.text = item.date
        sportMenSurName.text = item.surname
    }
}
