import Foundation

class Article {
  var title: String = "title"
  var date: String = "YYYY/MM/DD"
  var body: String = "This is lazy var test."
  var author: String = "Hendrix"

  lazy var text : String = {
    print ("### text initialized")
    let now = Date()
    let df = DateFormatter()
    df.dateFormat = "YYYY/MM/DD"
    date = df.string(from: now)

    let lb = "\n"
    return lb+title+lb+date+lb+body+lb+author+lb
  }()
}

let article = Article()
print ("article initialized")
print (article.text)
//### text initialized << 変数を使ったタイミングで初期化処理が走る
//title
//2024/01/26
//This is lazy var test.
//Hendrix

article.title = "edited!"
print (article.text)
//title << stored propertyなので一度初期化したらその後は初期化処理は走らない
//2024/01/26
//This is lazy var test.
//Hendrix
