//
//  QuestViewController.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/05.
//

import UIKit

class QuestViewController: UIViewController {
    @IBOutlet weak var currentTimeLabel: UILabel?
    
    override func viewDidLoad() {
        let date = Date() // YYYY-MM-dd EEE 2021-08-05 목요일
        let dateFormatter = DateFormatter()
        
        dateFormatter.locale = Locale(identifier: "ko-KR")
        dateFormatter.dateFormat = "MM월 dd일 E"
        
        currentTimeLabel?.text = dateFormatter.string(from: date)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

