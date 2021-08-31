//
//  TodoList.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/15.
//

import UIKit

// 투두리스트를 담을 전역변수
var todoList = [TodoInfo]()

struct TodoInfo {
    var content: String? = "" // 할 일 내용
    var isComplete: Bool = false // 할 일 완료 여부
    
    init(_ content: String?, _ isComplete: Bool ) {
        self.content = content
        self.isComplete = isComplete
    }
}
