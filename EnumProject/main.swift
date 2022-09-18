//
//  main.swift
//  EnumProject
//
//  Created by Boris Zitserman on 17.09.2022.
//

import Foundation
var someday = "Monday"
func setupAlarm(for day:String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 a.m")
    } else {
        print("Today is \(day). Alarm no set")
    }
}
setupAlarm(for: someday)

someday = "Tuesday"

setupAlarm(for: someday)

/* Example
 enum Enumeration {
 case enumeration
 }
 */

enum Weekday {
    case monday, thursday, friday, satuday, sunday
    case tuesday
    case wednesday
}

// Switch for enum
var weekday = Weekday.tuesday

weekday = .friday

func setupAlarm(for weekday: Weekday) {
    switch weekday {
        
    case .monday:
        print("To set alarm at 8 am")
    case .thursday:
        print("To set alarm at 8:30 am")
    case .friday:
        print("TGIF")
    case .satuday:
        print("Weekand, alarm no set")
    case .sunday:
        print("To set alarm at 7:30 am")
    default:
        print("To set alarm at 9:00 am")

    }
}

setupAlarm(for: weekday)

// Исходные данные

enum Countries: String {
    case usa = "USA"
    case russia = "Russia"
    case chiana
}

var country = Countries.russia
print("case name: \(country)")
print("case value: \(country.rawValue)")

country = Countries.chiana
print("case name: \(country)") // russia
print("case value: \(country.rawValue)") // Russia

// Автоматически присваивает порядковый номер от 0
enum Planet: Int {
    case mercury , venus = 5, earth, mars, jupiter, saturn, uranus, neptusne
}

let earth = Planet.earth
print("Earth is the \(earth.rawValue) from the sun")
// 6

// Инициализация

//let possiblePlanet = Planet(rawValue: 13) // опциональный тип
if let possiblePlanet = Planet(rawValue: 7) {
    print ("The seventh planet is \(possiblePlanet)")
}

//Связанные значения

enum WeekdayV2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

var anyDay = WeekdayV2.workday(message: "Set alarm to", time: 8)

func setAlarm(for weekday: WeekdayV2) {
    switch weekday {
        
    case let .workday(message, time):
        print("\(message) \(time) a.m.")
    case /* let */.weekend(let message):
        print(message)
    }
}

setAlarm(for: anyDay)

anyDay = .weekend(message: "Have a nice weekend")

setAlarm(for: anyDay)

