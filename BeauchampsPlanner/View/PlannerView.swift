//
//  PlannerView.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 10/25/23.
//

import SwiftUI

struct PlannerView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemOrange)
                    .ignoresSafeArea()
                VStack {
                    Image("beauchamp")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.indigo, lineWidth: 5))
                        .padding()
                    List {
                        Section {
                            HStack {
                                Text("bite mom")
                                Spacer()
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.gray)
                            }
                            HStack {
                                Text("try to escape")
                                Spacer()
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.gray)
                            }
                        } header: {
                            Text("To Do")
                                .foregroundStyle(.black)
                        }
                        Section {
                            ForEach(viewModel.scheduleItems, id: \.self) { item in
                                Text(item)
                            }
                        } header: {
                            Text("Schedule")
                                .foregroundStyle(.black)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
            }
            .navigationTitle("Beauchamp's Planner")
        }
    }
}

#Preview {
    PlannerView(viewModel: ViewModel())
}
