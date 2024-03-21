//
//  AllDayEvent.swift
//  JZCalendarViewExample
//
//  Created by Jeff Zhang on 3/4/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import JZCalendarWeekView

class AllDayEvent: JZAllDayEvent {

    var location: String
    var title: String
    
    init(id: String, title: String, startDate: Date, endDate: Date, location: String, isAllDay: Bool) {
        self.location = location
        self.title = title
        super.init(isAllDay: isAllDay, id: id, startDate: startDate, endDate: endDate)
    }

    override func copy(with zone: NSZone? = nil) -> Any {
        return AllDayEvent(id: id, title: title, startDate: startDate, endDate: endDate, location: location, isAllDay: isAllDay)
    }
}
