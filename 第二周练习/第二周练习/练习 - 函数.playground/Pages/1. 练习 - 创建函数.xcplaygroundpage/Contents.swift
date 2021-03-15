/*:
## 练习 - 创建函数

编写一个名为 `introduceMyself` 的函数来输出简单的自我介绍。调用该函数，然后观察输出结果。
*/
func introduceMyself() -> String{
    return "hello, I'm otaku desu."
}
print(introduceMyself())

/*:
编写一个名为 `magicEightBall` 的函数来生成一个随机数，然后使用 switch 语句或 if-else-if 语句来根据生成的随机数输出不同的响应信息。可以使用 `let randomNum = arc4random_uniform(UInt32(5))` 来生成 0 到 4 之间的随机数。然后，根据生成的数字输出相应的不同信息。多次调用该函数，然后观察不同的输出结果。请注意，除非在下面的 `import Foundation` 语句之后声明函数，否则无法生成随机数。这是因为 `arc4random_uniform(_:)` 函数是在 `Foundation` 框架中声明的。
*/
import Foundation
func magicEightBall() -> Int{
    return Int(arc4random_uniform(UInt32(5)))
}
switch magicEightBall() {
case 0:
    print("HELLO")
case 1:
    print("你好")
case 2:
    print("konnichiha")
case 3:
    print("hi")
case 4:
    print("bye")
default:
    print()
}
//: 第 1 页，共 6 页  |  [下一页：App 练习 - App 运行](@next)
