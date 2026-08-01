import Foundation
import Ignite

struct WelcomeHero: HTML {
    var body: some HTML {
        Section {
            Image("/images/logo.png", description: "Lodge Causeway Seventh-day Adventist Church Logo")
                .resizable()
                .frame(width: 200)

            Text("Welcome to Lodge Causeway Seventh-day Adventist Church")
                .font(.title1)
                .fontWeight(.semibold)
                .margin(.top, 20)

            Text("Bristol Lodge Causeway")
                .font(.title3)
                .foregroundStyle(.secondary)

            Text {
                "We are a warm and welcoming Seventh-day Adventist community "
                "in Bristol. Whether you're looking for a church home or just "
                "visiting, you are always welcome here."
            }
            .font(.body)
            .margin(.top, 20)
        }
        .horizontalAlignment(.center)
        .margin(.top, 100)
        .margin(.bottom, 40)
    }
}
