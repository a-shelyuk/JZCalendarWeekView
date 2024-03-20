//
//  JZBaseEvent.swift
//  JZCalendarWeekView
//
//  Created by Jeff Zhang on 29/3/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

public protocol JZBaseEvent: NSCopying {

    var id: String { get }
    
    var startDate: Date { get }
    
    var endDate: Date { get }
    
    // If a event crosses two days, it should be devided into two events but with different intraStartDate and intraEndDate
    // eg. startDate = 2018.03.29 14:00 endDate = 2018.03.30 03:00, then two events should be generated: 1. 0329 14:00 - 23:59(IntraEnd) 2. 0330 00:00(IntraStart) - 03:00
    var intraStartDate: Date { get set }
    var intraEndDate: Date { get set }
}
