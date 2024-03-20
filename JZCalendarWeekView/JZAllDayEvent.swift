//
//  JZAllDayEvent.swift
//  JZCalendarWeekView
//
//  Created by Jeff Zhang on 24/5/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

open class JZAllDayEvent: JZBaseEvent {

    /// If a event is All-Day, then it will be shown at top of calendarView
    public var isAllDay: Bool

    public var id: String
    public var startDate: Date
    public var endDate: Date
    public var intraStartDate: Date
    public var intraEndDate: Date

    public init(isAllDay: Bool, id: String, startDate: Date, endDate: Date) {
        self.isAllDay = isAllDay
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
        self.intraStartDate = startDate
        self.intraEndDate = endDate
    }

    open func copy(with zone: NSZone? = nil) -> Any {
        return JZAllDayEvent(isAllDay: isAllDay, id: id, startDate: startDate, endDate: endDate)
    }
}
