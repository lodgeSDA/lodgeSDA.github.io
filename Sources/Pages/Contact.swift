import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact Us"

    var body: some HTML {
        Section {
            Text("Contact Us")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("We'd love to hear from you. Whether you have questions, need prayer, or want to visit, please don't hesitate to get in touch.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            Grid {
                // Location Card
                Card {
                    Image(systemName: "geo-alt-fill", description: "Location icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Our Location")
                        .font(.title4)
                        .fontWeight(.semibold)

                    Text("Lodge Causeway SDA Church")
                        .font(.body)
                    Text("4 Worcester Close")
                        .font(.body)
                    Text("Bristol, BS16 3PW")
                        .font(.body)
                    Text("United Kingdom")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)

                // Contact Info Card
                Card {
                    Image(systemName: "envelope-fill", description: "Email icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Get in Touch")
                        .font(.title4)
                        .fontWeight(.semibold)

                    Link("lodgecausewaysda@gmail.com", target: "mailto:lodgecausewaysda@gmail.com")
                        .font(.body)
                        .margin(.bottom, 5)

                    Text("Pastor Robis: 07894226793")
                        .font(.body)
                        .foregroundStyle(.secondary)
                    Text("Elder Des Mills: 07795 445 833")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)

                // Social Media Card
                Card {
                    Image(systemName: "share-fill", description: "Social media icon")
                        .foregroundStyle(Color(hex: "#B67F21"))
                        .font(.title1)
                        .margin(.bottom, 10)

                    Text("Follow Us")
                        .font(.title4)
                        .fontWeight(.semibold)

                    Link(target: "https://www.facebook.com/lodgecausewaysda") {
                        Image(systemName: "facebook", description: "Facebook")
                        " Facebook"
                    }
                    .font(.body)
                    .margin(.bottom, 5)

                    Link(target: "https://www.instagram.com/lodgecausewaysda") {
                        Image(systemName: "instagram", description: "Instagram")
                        " Instagram"
                    }
                    .font(.body)
                }
                .horizontalAlignment(.center)
                .class("shadow-sm")
                .padding(20)
            }
            .columns(3)
            .margin(.bottom, 40)

            // Google Map
            Text("Find Us")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 20)


            Include("google-map.html")
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }
}
