//
//  QuestTableViewCell.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/19.
//

import UIKit

class QuestTableViewCell: UITableViewCell {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("cell is selected")
        // Configure the view for the selected state
    }
    
    // 삭제버튼을 터치했을 때
    @IBAction func tabClearBtn(_ sender: UIButton) {
        
    }
    
    // 완료버튼을 터치했을 때
    @IBAction func tabDoneBtn(_ sender: UIButton) {
        doneBtn.isSelected.toggle()
        print(doneBtn.isSelected)
    }
}
