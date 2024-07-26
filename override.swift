class A {
  func show() {
    print("This is A")
  }
}

class B:A {
  override func show() {
    print ("This is B")
  }
}

var a = A()
var b = B()

var c = b as A
c.show()
