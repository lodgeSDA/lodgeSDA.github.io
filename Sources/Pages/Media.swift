import Foundation
import Ignite

struct Media: StaticPage {
    var title = "Media"

    var body: some HTML {
        Section {
            Text("Media")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("Watch sermons, Sabbath School recaps, and inspirational content from our church family.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            // Live Stream
            Text("Live Stream")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("Join us live every Sabbath for Divine Service.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            Include("livestream-embed.html")
                .margin(.bottom, 40)

            Divider()

            // Sermons
            Text("Sermons")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 30)

            Text("Catch up on recent sermons and messages.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            Grid {
                videoCard(youtubeId: "7Cj6cgKIHeU", title: "Sermon")
                videoCard(youtubeId: "BYyaTs3aRps", title: "Sermon")
                videoCard(youtubeId: "e8hlQyJ4rXQ", title: "Sermon")
            }
            .columns(3)
            .margin(.bottom, 40)

            Divider()

            // Motivational / Inspirational
            Text("Inspirational Videos")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.top, 30)

            Text("Short messages of encouragement and hope.")
                .font(.body)
                .horizontalAlignment(.center)
                .foregroundStyle(.secondary)
                .margin(.bottom, 15)

            Grid {
                videoCard(youtubeId: "Elu8kDKre6Y", title: "Inspirational Message")
            }
            .columns(3)
            .margin(.bottom, 20)
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }

    private func videoCard(youtubeId: String, title: String) -> some HTML {
        Card {
            Text("<iframe width=\"100%\" height=\"200\" src=\"https://www.youtube.com/embed/\(youtubeId)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen style=\"border-radius: 8px;\"></iframe>")
            Text(title)
                .font(.title5)
                .fontWeight(.semibold)
                .margin(.top, 10)
        }
        .class("shadow-sm")
        .padding(10)
    }
}
