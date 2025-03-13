//
//  ContentView.swift
//  IdentifiableInstances
//
//  Created by Russell Gordon on 2025-03-13.
//

import SwiftUI

struct StudentsListView: View {
    
    // MARK: Stored properties
    @State var students: [String] = ["Alice", "Bob", "Bob", "Charlie", "Daniela"]
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(students, id: \.self) { currentStudent in
                Text(currentStudent)
            }
            .navigationTitle("Class List")
        }
    }
}

#Preview {
    StudentsListView()
}
