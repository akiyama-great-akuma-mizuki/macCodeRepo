/*:
## App 练习 - App 运行

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

你可能已经注意到了，函数是 app 运行的关键。例如，到目前为止的处理步数的每个练习中，都是为 `steps` 变量简单分配一个步数。步数一次递增一步，并且在一天之中不断递增，这样不太符合现实。

此类重复过程最适合使用函数来完成。在下面的 `steps` 声明之后，编写一个名为 `incrementSteps` 的函数，使 `steps` 以 1 递增，然后输出其值。多次调用该函数，然后观察输出结果。
*/
var steps = 0
func incrementSteps(){
    steps += 1
}
for i in 1 ... 10{
    incrementSteps()
    print(steps,separator :(" "),terminator: (" "))
}
print()

/*:
同样，如果要定期向用户提供进度更新，可以在函数中放入控制流程语句来检查进度。在下面 `goal` 的声明之后编写一个名为 `progressUpdate` 的函数。该函数应按如下方式输出信息：如果 `steps` 小于 `goal` 的 10%，则输出“You're off to a good start.”；如果 `steps` 小于 `goal` 的一半，则输出“You're almost halfway there!”；如果 `steps` 小于 `goal` 的 90%，则输出“You're over halfway there!”；如果 `steps` 接近 `goal`，则输出“You're almost there!”；否则，输出“You beat your goal!”。调用该函数，然后观察输出结果。请记住，可以使用适当的 Int 或 Double 构造器来转换数字。
*/
let goal = 10000
func progressUpdate(){
    if(steps < Int(0.1 * Double(goal))){
        print("you're offer to a good start")
    }
    else if (steps < Int(0.5 * Double(goal))){
        print("you are almost halfway there")
    }
    else if (steps < Int(0.9 * Double(goal))){
        print("you are over halfway there")
    }
    else if (steps < goal){
        print("you are almost there")
    }
    else {
        print("you beat your goal")
    }
}
progressUpdate()

//: [上一页](@previous)  |  第 2 页，共 6 页  |  [下一页：练习 - 参数和自变量标签](@next)
