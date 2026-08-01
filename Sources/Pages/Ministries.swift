import Foundation
import Ignite

struct Ministries: StaticPage {
    var title = "Ministries"

    var body: some HTML {
        Section {
            Text("Our Ministries")
                .font(.title1)
                .fontWeight(.semibold)
                .horizontalAlignment(.center)

            Text("We believe every member has a gift to share. Our ministries provide opportunities to grow in faith, serve others, and build community together.")
                .font(.body)
                .horizontalAlignment(.center)
                .margin(.bottom, 40)

            Grid {
                MinistryCard(
                    iconName: "compass",
                    title: "Children's & Pathfinder Clubs",
                    description: "Nurturing young hearts through faith-based activities, Bible adventures, and the Pathfinder programme. Our children's ministry helps kids discover God's love through fun, learning, and community."
                )

                MinistryCard(
                    iconName: "people",
                    title: "Youth Ministry",
                    description: "Empowering young people to grow in their relationship with Christ through fellowship, worship, outreach, and Bible study. A safe and vibrant space for teens and young adults."
                )

                MinistryCard(
                    iconName: "music-note-beamed",
                    title: "Music Ministry",
                    description: "Leading our congregation in praise and worship through song. Our choir, musicians, and praise teams use their gifts to glorify God and uplift spirits every Sabbath."
                )

                MinistryCard(
                    iconName: "heart-pulse",
                    title: "Health Ministry",
                    description: "Promoting whole-person wellness through health education, cooking classes, and community health events. We believe caring for our bodies is part of honouring God."
                )

                MinistryCard(
                    iconName: "flower1",
                    title: "Women's Ministry",
                    description: "A supportive fellowship where women encourage one another in faith, prayer, and service. Through retreats, Bible studies, and outreach, we grow together in Christ."
                )

                MinistryCard(
                    iconName: "shield-check",
                    title: "Men's Ministry",
                    description: "Building men of faith through fellowship, accountability, Bible study, and community service. We encourage men to lead with integrity and serve with purpose."
                )
            }
            .columns(3)
        }
        .margin(.top, 100)
        .margin(.bottom, 80)
    }
}
