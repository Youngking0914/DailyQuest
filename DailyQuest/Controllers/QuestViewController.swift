//
//  QuestViewController.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/05.
//

import UIKit

// 투두리스트를 담을 전역변수
var list = [TableViewCell]()

class QuestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var questTableView: UITableView!
    @IBOutlet weak var currentTimeLabel: UILabel?
    
    func showDate() {
        let date = Date() // YYYY-MM-dd EEE 2021-08-05 목요일
        let dateFormatter = DateFormatter() // 날짜 표시형식 변경
        dateFormatter.locale = Locale(identifier: "ko-KR")
        dateFormatter.dateFormat = "MM월 dd일 E"
        
        currentTimeLabel?.text = dateFormatter.string(from: date)
    }
    
    override func viewDidLoad() {
        questTableView.dataSource = self
        questTableView.delegate = self
        
        showDate()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // n번째 섹션에 몇개의 row가 있는지 반환하는 함수입니다
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    // n번째 섹션의 m번째 row를 그리는데 필요한 cell을 반환하는 메소드입니다
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
         
        return cell
    }

}

