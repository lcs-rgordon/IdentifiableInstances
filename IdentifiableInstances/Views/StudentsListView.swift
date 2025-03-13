//
//  ContentView.swift
//  IdentifiableInstances
//
//  Created by Russell Gordon on 2025-03-13.
//

import SwiftUI

struct StudentsListView: View {
    
    // MARK: Stored properties
    @State var students: [String] = ["Alice", "Bob", "Charlie", "Daniela", "Bob"]
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(students, id: \.self) { currentStudent in
                Text(currentStudent)
                    .swipeActions {
                        Button("Delete") {
                            withAnimation {
                                delete(currentStudent)
                            }
                        }
                        .tint(.red)
                    }
            }
            .navigationTitle("Class List")
        }
    }
    
    // MARK: Function(s)
    // NOTE: This functionality would normally go in the view model
    func delete(_ providedStudent: String) {
        
        // Iterate over the elements of the array and find the student to delete
        for i in 0...students.count - 1 {
            if students[i] == providedStudent {
                
                // Remove the current student
                students.remove(at: i)
                
                // Exit the loop (don't delete any more students)
                break
            }
        }
        
    }
}

#Preview {
    StudentsListView()
}
