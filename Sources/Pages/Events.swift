import Foundation
import Ignite

struct Events: StaticPage {
    var title = "Events"

    var body: some HTML {
        Section {
            Text("Events & Calendar")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("Stay up to date with what's happening at Lodge Causeway SDA Church. View our calendar below for upcoming services, programmes, and special events.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            Include("google-calendar.html")

            Divider()
                .margin(.top, 30)

            Text("Weekly Schedule")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 20)

            ServiceTimes()
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }
}
