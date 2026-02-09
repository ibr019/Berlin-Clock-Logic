//
//  main.swift
//  Berlin Clock Logic
//
//  Created by IT developer on 09.02.2026.
//

import Foundation

print("Input time hh:mm:ss")

if let input = readLine()?.components(separatedBy: ":"), input.count == 3,
   let hours = Int(input[0]), let minutes = Int(input[1]), let seconds = Int(input[2]),
   -1 < hours && hours < 24, -1 < minutes && minutes < 60, -1 < seconds && seconds < 60 {
    
    let singleHours = hours % 5
    let fiveHours = hours / 5
    let singleMinutes = minutes % 5
    let fiveMinutes = minutes / 5
    
    func checkSeconds(seconds: Int) -> String {
        return seconds % 2 == 0 ? "Y" : "O"
    }
    
    func checkHours(hours: Int, row: Int) -> String {
        var singleFiveHour = Array(repeating: "O", count: row)
        if hours > 0 {
            for i in 1...hours {
                singleFiveHour[i-1] = "R"
            }
        }
        return singleFiveHour.joined()
    }
    
    func checkFiveMinutes(minutes: Int, row: Int) -> String {
        var fiveMinutes = Array(repeating: "O", count: row)
        if minutes > 0 {
            for i in 1...minutes {
                if i % 3 == 0 {
                    fiveMinutes[i-1] = "R"
                } else {
                    fiveMinutes[i-1] = "Y"
                }
            }
        }
        return fiveMinutes.joined()
    }
    
    func checkSingleMinutes(minutes: Int, row: Int) -> String {
        var singleMinutes = Array(repeating: "O", count: row)
        if minutes > 0 {
            for i in 1...minutes {
                singleMinutes[i-1] = "Y"
            }
        }
        return singleMinutes.joined()
    }
    
    func finalResult() {
        print("Single minutes Row Test Cases : \(checkSingleMinutes(minutes: singleMinutes, row: 4))")
        print("Five minutes Row Test Cases : \(checkFiveMinutes(minutes: fiveMinutes, row: 11))")
        print("Single hour Row Test Cases : \(checkHours(hours: singleHours, row: 4))")
        print("Hour Row Test Cases : \(checkHours(hours: fiveHours, row: 4))")
        print("Seconds Lamp Test Cases : \(checkSeconds(seconds: seconds))")
        print("Entire Berlic CLock Test Cases : \(checkSeconds(seconds: seconds))\(checkHours(hours: fiveHours, row: 4))\(checkHours(hours: singleHours, row: 4))\(checkFiveMinutes(minutes: fiveMinutes, row: 11))\(checkSingleMinutes(minutes: singleMinutes, row: 4))")
    }
    
    finalResult()
}
else {
    print("It is invalid")
}
