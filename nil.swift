class Sample {
  var member:String?
  init () {
    member = "sample"
  }
}

var nilVar: Sample?

//if nilVar?.member == nil {
var v = nilVar?.member as? Int
  print ("\(v)")
//}

