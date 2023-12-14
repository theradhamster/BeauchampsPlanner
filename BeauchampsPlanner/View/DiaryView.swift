//
//  DiaryView.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 10/25/23.
//

import SwiftUI

struct DiaryView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemOrange)
                    .ignoresSafeArea()
                List {
                    ForEach(viewModel.entries) { entry in
                        NavigationLink {
                            EntryView(viewModel: viewModel, entry: entry)
                        } label: {
                            Text(entry.date)
                        }
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Beauchamp's Diary")
        }
    }
}

#Preview {
    DiaryView(viewModel: ViewModel())
}
