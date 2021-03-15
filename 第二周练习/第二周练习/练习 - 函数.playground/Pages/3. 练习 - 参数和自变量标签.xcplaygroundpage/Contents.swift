/*:
## 练习 - 参数和自变量标签

编写一个名为 `introduction` 的新函数来用于自我介绍。该函数应接受两个 `String` 参数（`name` 和 `home`）以及一个 `Int` 参数 (`age`)。它应该输出简短的自我介绍。比方说，如果将“Mary”、“California”和 32 传入该函数，则可能会输出“Mary, 32, is from California.”。调用该函数，然后观察输出结果。
*/
func introduction(name : String, home : String, age : Int){
    print("\(name), \(age), is form \(home).")
}
introduction(name: "natsumi", home: "tokyo", age: 15)


/*:
编写一个名为 `multiply` 的函数来接受两个 `Double` 自变量。该函数应该将这两个自变量相乘，然后输出结果。第一个自变量应该不需要标签，第二个自变量应该有一个外部标签“by”来与内部标签区分。调用该函数，然后观察输出结果。
*/
func multiply(num1 : Double, by num2 : Double) -> Double{
    return num1 * num2
}
print(multiply(num1: 30, by: 3.3))

//: [上一页](@previous)  |  第 3 页，共 6 页  |  [下一页：App 练习 - 进度更新](@next)
