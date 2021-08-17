//
//  TodoList.swift
//  DailyQuest
//
//  Created by YoungK on 2021/08/15.
//

import UIKit

struct TodoList {
    var content: String? = "" // 할 일 내용
    var isComplete: Bool = false // 할 일 완료 여부
    
    init(content: String?, isComplete: Bool ) {
        self.content = content
        self.isComplete = isComplete
    }
}