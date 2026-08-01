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

            Text("Watch sermons and inspirational content from our church family.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 30)

            // Player
            Text("Watch")
                .font(.title2)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)
                .margin(.bottom, 15)

            playerContainer()
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

            // Inspirational
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

            script()
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }

    private func playerContainer() -> some HTML {
        Text("""
        <div id="media-player" style="text-align: center; padding: 30px 20px; background: #f5f5f5; border-radius: 12px; min-height: 200px; display: flex; align-items: center; justify-content: center;">
            <p style="color: #888; font-style: italic;">Select a video below to watch</p>
        </div>
        """)
    }

    private func videoCard(youtubeId: String, title: String) -> some HTML {
        Text("""
        <div onclick="playVideo('\(youtubeId)')" style="cursor: pointer; border-radius: 8px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.12); transition: transform 0.15s ease;" onmouseover="this.style.transform='scale(1.02)'" onmouseout="this.style.transform='scale(1)'">
            <img src="https://img.youtube.com/vi/\(youtubeId)/hqdefault.jpg" alt="\(title)" style="width: 100%; display: block;" loading="lazy" />
            <div style="padding: 12px 10px; background: #fff;">
                <p style="margin: 0; font-weight: 600; font-size: 0.95rem;">\(title)</p>
            </div>
        </div>
        """)
    }

    private func script() -> some HTML {
        Text("""
        <script>
        function playVideo(id) {
            var p = document.getElementById('media-player');
            p.innerHTML = '<iframe width="100%" height="450" src="https://www.youtube.com/embed/' + id + '?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="border-radius: 12px; max-width: 800px;"></iframe>';
            p.style.padding = '0';
            p.style.background = '#000';
            p.scrollIntoView({ behavior: 'smooth' });
        }
        </script>
        """)
    }
}
