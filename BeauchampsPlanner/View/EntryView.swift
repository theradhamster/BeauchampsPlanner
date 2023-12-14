//
//  EntryView.swift
//  BeauchampsPlanner
//
//  Created by Dorothy Luetz on 12/14/23.
//

import SwiftUI

struct EntryView: View {
    @ObservedObject var viewModel: ViewModel
    let entry: Entry
    
    var body: some View {
        ZStack {
            Color(.systemOrange)
                .ignoresSafeArea()
            VStack {
                Text(entry.text)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    EntryView(viewModel: ViewModel(), entry: Entry(date: "1/1/24", text: "sample"))
}
