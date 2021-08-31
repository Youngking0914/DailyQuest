//
//  QuestViewController.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/05.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var questTableView: UITableView!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.questTableView.dataSource = self
        self.questTableView.delegate = self
        self.inputTextField.delegate = self
    }
    
    /*
    func showDate() {
        let date = Date() // YYYY-MM-dd EEE 2021-08-05 목요일
        let dateFormatter = DateFormatter() // 날짜 표시형식 변경
        dateFormatter.locale = Locale(identifier: "ko-KR")
        dateFormatter.dateFormat = "MM월 dd일 E"
        
        currentTimeLabel?.text = dateFormatter.string(from: date)
    }
 */
}




