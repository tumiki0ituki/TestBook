//
//  HolidayState.swift
//  TestBook
//
//  Created by PAPC-0467 on 2020/07/27.
//  Copyright © 2020 PAPC-0467. All rights reserved.
//

import Foundation

class HolidayState {
    
    /// テストしにくい実装
    /// - Returns: 休日か否か？
    func isHolidayBad() -> Bool {
        let now = Date()
        
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: now)
        
        return weekday == 1 || weekday == 7
    }
    
    /// テストしやすい実装😊
    /// - Parameter date: デフォルト引数は実行時の日時
    /// - Returns: 休日か否か？
    func isHoliday(_ date: Date = Date()) -> Bool {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        
        return weekday == 1 || weekday == 7
    }
}
