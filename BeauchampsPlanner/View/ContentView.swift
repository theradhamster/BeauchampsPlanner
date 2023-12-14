//
//  ContentView.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlannerView(viewModel: ViewModel())
                .tabItem {
                    Label("Planner", systemImage: "list.bullet.clipboard.fill")
                }
            DiaryView(viewModel: ViewModel())
                .tabItem {
                    Label("Diary", systemImage: "text.book.closed.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
