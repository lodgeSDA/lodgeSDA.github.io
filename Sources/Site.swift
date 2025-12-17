import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = LodgeSDA()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct LodgeSDA: Site {
    var name = "LodgeSDA"
    var titleSuffix = " – Home"
    var url = URL(static: "https://lodgesda.github.io")
    var builtInIconsEnabled = true

    var lightTheme: (any Theme)? = AutomataNight()
    var darkTheme: (any Theme)? = AutomataNight()
    var author = "Maurice Elliott"
    var favicon: URL? { URL(static: "/images/logo.png") }

    var homePage = Home()
    var layout = MainLayout()
    
    var articlePages: [any ArticlePage] {
        ArticleLayout()
    }
}
