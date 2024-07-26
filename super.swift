class Root {
  init() {
    print ("Root init")
  }

  func test() {
    print ("Root test")
  }
}

class Sub : Root {
  override init() {
    //super.init()
    print ("Sub init")
  }

  override func test() {
    print ("Sub test")
  }
}

class Subsub : Sub {
  override init () {
    //super.init()
    print("Subsub init")
  }

  override func test() {
    super.test()
    print ("SubSub test")
  }
}

let subsub = Subsub()
//Subsub init
//Sub init
//Root init

subsub.test()
//Sub test
//SubSub test
