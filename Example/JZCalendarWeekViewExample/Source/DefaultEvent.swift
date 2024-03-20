//
//  DefaultEvent.swift
//  JZCalendarWeekViewExample
//
//  Created by Jeff Zhang on 30/5/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import Foundation
import JZCalendarWeekView

class DefaultEvent: JZBaseEvent {

    var location: String
    var title: String
    var id: String
    var startDate: Date
    var endDate: Date
    var intraStartDate: Date
    var intraEndDate: Date

    init(id: String, title: String, startDate: Date, endDate: Date, location: String) {
        self.id = id
        self.title = title
        self.startDate = startDate
        self.endDate = endDate
        self.intraStartDate = startDate
        self.intraEndDate = endDate
        self.location = location
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return DefaultEvent(id: id, title: title, startDate: startDate, endDate: endDate, location: location)
    }
}
