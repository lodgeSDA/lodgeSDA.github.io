import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"

    var body: some HTML {
        Section {
            // Mission
            Text("Our Mission")
                .font(.title1)
                .fontWeight(.semibold)
                .margin(.top, 20)

            Text("Our mission is to be a Christ-centred, welcoming community where people of every race, background, and generation can encounter God\u{2019}s love, grow in faith, and serve our neighbourhood with compassion. We exist to share hope, build genuine relationships, and create a place where everyone belongs. Through worship, teaching, and practical care, we seek to make a lasting difference in our community and beyond.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            // Vision
            Text("Our Vision")
                .font(.title1)
                .fontWeight(.semibold)

            Text("To be a vibrant, Christ-centred community that reflects God\u{2019}s love to every person in Bristol and beyond \u{2014} a church where lives are transformed by the gospel, families are strengthened, and every member is equipped to serve and share the hope found in Jesus Christ.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            // History
            Text("Our History")
                .font(.title1)
                .fontWeight(.semibold)

            Text("For over seventy years, Lodge Causeway Seventh-day Adventist Church has stood at the heart of our community as a welcoming home for people of every race, background, and story. We\u{2019}re a vibrant, friendly congregation, meeting on the Sabbath (Saturday) where everyone is truly valued, and newcomers are embraced like family. Our services blend heartfelt worship, practical teaching, and genuine connection, creating a space where faith can grow and lives can flourish. Whether you\u{2019}re exploring church for the first time or looking for a fresh start, you\u{2019}ll find warmth, openness, and a place to belong.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            Divider()

            // Church Leaders
            Text("Our Leaders")
                .font(.title1)
                .fontWeight(.semibold)
                .margin(.top, 30)
                .margin(.bottom, 20)

            Grid {
                leaderCard(image: "/images/pastor.jpg", name: "Pastor Robis da Silva", role: "Pastor")
                leaderCard(image: "/images/des.jpg", name: "Des Mills", role: "Elder")
                leaderCard(image: "/images/ruth.jpg", name: "Ruth Ohman", role: "Elder")
            }
            .columns(3)
            .margin(.bottom, 30)

            Text("Additional Leaders")
                .font(.title3)
                .fontWeight(.semibold)
                .margin(.bottom, 15)

            Grid {
                leaderListColumn(entries: [
                    ("James Mureru", "Elder"),
                    ("Tongai Zhou", "Elder"),
                    ("Des Mills", "Treasurer"),
                    ("Richard Timmerman", "Clerk"),
                    ("Charlou Medes", "Head Deacon"),
                    ("Leonora De San Jose", "Head Deaconess"),
                    ("Hilda Medes", "Sabbath School")
                ])
                leaderListColumn(entries: [
                    ("Isaac Israel", "Personal Ministry"),
                    ("Kellys Sikabbwele", "Youth Leader"),
                    ("Patience Mureru", "Children/Pathfinder"),
                    ("Ingrid Wellman", "Health & Women\u{2019}s Ministry"),
                    ("Rachel Ohman", "Safeguarding & Music Ministry"),
                    ("Stephanie Anderson", "Music Ministry"),
                    ("Jacob Jayaraj", "Men\u{2019}s Ministry")
                ])
            }
            .columns(2)
            .margin(.bottom, 40)

            Divider()

            // Tithes and Donations
            Text("Support Our Mission")
                .font(.title2)
                .fontWeight(.semibold)
                .margin(.top, 30)

            Text("Your generous contributions help us continue our work in the community and beyond.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 15)

            Link("Tithes and Donations", target: "https://sec.adventist.uk/giving/tithes-offerings-and-donations")
                .linkStyle(.button)
        }
        .horizontalAlignment(.center)
        .margin(.top, 100)
        .margin(.bottom, 80)
    }

    private func leaderCard(image: String, name: String, role: String) -> some HTML {
        Card {
            Image(image, description: "Photo of \(name)")
                .resizable()
                .cornerRadius(8)
                .margin(.bottom, 10)

            Text(name)
                .font(.title5)
                .fontWeight(.semibold)

            Text(role)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .horizontalAlignment(.center)
        .class("shadow-sm")
        .padding(15)
    }

    private func leaderListColumn(entries: [(String, String)]) -> some HTML {
        List {
            for entry in entries {
                Text {
                    Strong(entry.0)
                    " \u{2014} \(entry.1)"
                }
                .font(.body)
            }
        }
        .listStyle(.plain)
    }
}
