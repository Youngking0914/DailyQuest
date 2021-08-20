//
//  QuestTableViewCell.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/19.
//

import UIKit

class QuestTableViewCell: UITableViewCell {
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var clearBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("selected")
        // Configure the view for the selected state
    }
}
