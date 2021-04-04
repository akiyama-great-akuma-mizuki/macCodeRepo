/*:
## 练习 - 创建闭包

创建一个闭包，将其分配给一个没有参数和返回值的常量 `blankClosure`。
*/
let blankClosure = {()
    print("hello")
}
blankClosure()
/*:
 创建一个闭包，将其分配给一个没有参数但返回值为 `Int` 的常量 `fourClosure`。该闭包的主体应始终返回值 4。调用该闭包四次。
*/
let fourClosure = {() -> Int in
    return 4
}
fourClosure()
fourClosure()
fourClosure()
fourClosure()


/*:
创建一个闭包，将其分配给一个接受 `name` 字符串自变量但没有返回值的常量 `greeting`。在该闭包的主体内，输出此自变量。使用“Gary”、“Jane”、“Rick”和“Beth”作为自变量，调用该闭包四次。
*/
let greeting = {(Name : String) -> Void in
    print(Name)
}
greeting("Gray")
greeting("Jane")
greeting("Rick")
greeting("Beth")
//: 第 1 页，共 3 页  |  [下一页：练习 - 将闭包作为自变量传递以及语法糖](@next)
