//
//  QuestViewController.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/05.
//

import UIKit

// 투두리스트를 담을 전역변수
var list = [TodoList]()

class MainViewController: UIViewController {
    
    @IBOutlet weak var questTableView: UITableView!
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        questTableView.dataSource = self
        questTableView.delegate = self
        inputTextField.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    // n번째 섹션에 몇개의 row가 있는지 반환하는 함수입니다
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TodoList 의 갯수만큼 반환
        return list.count
    }
    // n번째 섹션의 m번째 row를 그리는데 필요한 cell을 반환하는 메소드입니다
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // 테이블 뷰 셀에 TodoList 값 넣기
        //cell.textLabel?.text = list[indexPath.row].content
        cell.accessoryType = list[indexPath.row].isComplete == true ? .checkmark : .none
        cell.accessibilityLabel?.append(list[indexPath.row].content!)
        return cell
    }
}

extension MainViewController: UITextFieldDelegate {
    // textField 에서 return 키를 눌렀을 때 동작하는 메소드입니다
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // return 키를 입력한 textField 가 inputTextField 일 경우
        if textField == inputTextField {
            if let text = inputTextField.text {
                // textField 안에 내용이 있을 경우에만
                if !text.isEmpty {
                    print(text + " return") // 테스트용
                    let item = TodoList(content: String(text), isComplete: false)
                    list.append(item)
                }
            }
            // 테이블 뷰 reload 새로고침
            questTableView.reloadData()
        }
        return true
    }
}

