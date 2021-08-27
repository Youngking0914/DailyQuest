//
//  MainViewController+UITextFieldDelegate.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/27.
//

import UIKit

extension MainViewController: UITextFieldDelegate {
    
    // textField 에서 return 키를 눌렀을 때 동작하는 메소드입니다
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("called shouldReturn method !")
        
        if textField == inputTextField {
            // textField 가 nil 이 아니고 text 가 ! empty 일 경우
            guard let text = inputTextField.text, !text.isEmpty else { return false }
            print(text, ": is not nil, not empty !")
            print(text, ": is returned !")
            let item = TodoList(String(text), false)
            list.append(item)
            inputTextField.text = ""
            }
        
        // 테이블 뷰 reload 새로고침
        questTableView.reloadData()
        return true
        }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("called ShouldidEndEditing !")
        return true
    }
}
