//
//  SportsMenListCell.swift
//  HastenSports
//
//  Created by Pablo Vélez  on 04/12/2018.
//  Copyright © 2018 Denis. All rights reserved.
//

import UIKit
import AlamofireImage

class SportsMenListCell: UITableViewCell {
    
    @IBOutlet weak var sportMenImage: UIImageView!
    @IBOutlet weak var sportMenName: UILabel!
    @IBOutlet weak var sportMenDate: UILabel!
    @IBOutlet weak var sportMenSurName: UILabel!
    
    func configure(with item: Player){
        if(item.image != nil && item.image != ""){
            sportMenImage.af_setImage(withURL: URL(string: item.image!)!)
        }
        sportMenName.text = item.name
        sportMenDate.text = item.date
        sportMenSurName.text = item.surname
    }
}
