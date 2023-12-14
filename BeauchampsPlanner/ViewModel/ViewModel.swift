//
//  ViewModel.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 10/25/23.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var scheduleItems = ["7:30 P.M. - Wake up 😴", "8:00 P.M. - Bathe 🧼", "10:00 P.M. - Run on wheel 🏃"]
    @Published var entries = [Entry(date: "October 18, 2023", text: "Today I tried to escape my cage. Unfortunately mom foiled my plans, but I will be sneakier next time. I had some amazing cabbage and carrots. I also spent an hour rearranging everything in my house and then two hours taking a bath. All in all, a great day."), Entry(date: "October 21, 2023", text: "sample entry"), Entry(date: "October 24, 2023", text: "sample entry")]
}
