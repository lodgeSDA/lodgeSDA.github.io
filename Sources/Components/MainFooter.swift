import Foundation
import Ignite

struct MainFooter: HTML {

  var body: some HTML {
    Section {
      Divider()
        .margin(.bottom, 30)

      Text("Lodge Causeway SDA Church — Bristol, UK")
        .horizontalAlignment(.center)
        .font(.body)
        .fontWeight(.light)

      Text("4 Worcester Close, Bristol, BS16 3PW")
        .horizontalAlignment(.center)
        .font(.body)
        .fontWeight(.ultraLight)
        .foregroundStyle(.secondary)
        .margin(.bottom, 15)

      Section {
        Link(Image(systemName: "facebook", description: "Facebook"), target: "https://www.facebook.com/lodgecausewaysda")
          .margin(.horizontal, 10)

        Link(Image(systemName: "instagram", description: "Instagram"), target: "https://www.instagram.com/lodgecausewaysda")
          .margin(.horizontal, 10)
      }
      .horizontalAlignment(.center)
      .margin(.bottom, 15)

      Link("South England Conference", target: "https://sec.adventist.uk/")
        .horizontalAlignment(.center)
        .font(.body)
        .fontWeight(.ultraLight)
        .textDecoration(.none)

      Link("Github", target: "https://www.github.com/lodgeSDA/LodgeSDA.church")
        .horizontalAlignment(.center)
        .font(.body)
        .fontWeight(.ultraLight)
        .textDecoration(.none)
    }
    .margin(.top, 80)
    .margin(.bottom, 40)
  }
}
