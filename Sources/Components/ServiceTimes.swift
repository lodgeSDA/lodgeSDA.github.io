import Foundation
import Ignite

struct ServiceTimes: HTML {
    var body: some HTML {
        Card {
            Text("Regular Services")
                .font(.title3)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.bottom, 20)

            Table {
                Row {
                    Column { Text("Sabbath School") }
                    Column { Text("Saturdays") }
                    Column { Text("10:00 AM") }
                }
                Row {
                    Column { Text("Divine Service") }
                    Column { Text("Saturdays") }
                    Column { Text("11:15 AM") }
                }
                Row {
                    Column { Text("Devotional Gathering (Zoom)") }
                    Column { Text("Mondays") }
                    Column { Text("6:00 AM") }
                }
                Row {
                    Column { Text("Devotional Gathering (Zoom)") }
                    Column { Text("Thursdays") }
                    Column { Text("6:00 AM") }
                }
            }
            .tableStyle(.stripedRows)

            Link("Join Devotional Gathering on Zoom", target: "https://us02web.zoom.us/j/9778788528?pwd=enB6amRxUmVwQTdma1p2c3hEUkJtUT09")
                .linkStyle(.button)
                .margin(.top, 15)

            Text {
                "Meeting ID: 977 878 8528 | Passcode: 6vNzNg"
            }
            .font(.body)
            .foregroundStyle(.secondary)
            .horizontalAlignment(.center)
            .margin(.top, 5)
        }
        .class("shadow-sm")
        .margin(.top, 20)
        .margin(.bottom, 20)
    }
}
