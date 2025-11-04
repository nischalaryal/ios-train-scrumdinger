//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Nischal Aryal on 04/11/2025.
//

import SwiftUI

struct DetailEditView: View {
    
    @State private var scrum: DailyScrum = DailyScrum.emptyScrum
    @State private var attendeeName: String = ""
    
    var body: some View {
        Form {
            Section("Meeting Info") {
                TextField("Title", text: $scrum.title)
                
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length of meeting")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
            }
            
            Section("Attendees") {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                
                HStack {
                    TextField("New Attendee", text: $attendeeName)
                    Button {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: attendeeName)
                            scrum.attendees.append(attendee)
                            attendeeName = ""
                        }
                    } label: {
                        Image(systemName: "plus")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(attendeeName.isEmpty)

                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
