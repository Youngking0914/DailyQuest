//
//  MainViewController+UITableViewDelegate.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/27.
//

import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    // n번째 섹션에 몇개의 row가 있는지 반환하는 함수입니다
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TodoList 의 갯수만큼 반환
        return todoList.count
    }
    // n번째 섹션의 m번째 row를 그리는데 필요한 cell을 반환하는 메소드입니다
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: QuestTableViewCell = tableView.dequeueReusableCell(withIdentifier: "QuestTableViewCell", for: indexPath) as! QuestTableViewCell
        // 테이블 뷰 셀에 TodoList 값 넣기
        cell.contentLabel.text = todoList[indexPath.row].content
        cell.doneBtn.isSelected = todoList[indexPath.row].isComplete
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
