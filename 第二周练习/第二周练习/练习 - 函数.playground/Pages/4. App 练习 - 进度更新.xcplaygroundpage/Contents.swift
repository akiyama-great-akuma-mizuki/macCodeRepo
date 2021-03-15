/*:
## App 练习 - 进度更新

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

在许多情况下，都需要为函数提供输入。例如，你在“App 运行”练习中编写的 progress 函数可能位于项目中无法访问 `steps` 和 `goal` 值的区域。在这种情况下，无论何时调用该函数，都需要向其提供已完成步数和当天目标步数，这样才能输出正确的进度信息。

重新编写 `progressUpdate` 函数，但这一次仅为其提供两个类型为 `Int` 的参数，名称分别为 `steps` 和 `goal`。和以前一样，该函数应按如下方式输出信息：如果步数不到目标的 10%，则输出“You're off to a good start.”；如果步数不到目标的一半，则输出“You're almost halfway there!”；如果步数不到目标的 90％，则输出“You're over halfway there!”；如果步数接近目标，则输出“You're almost there!”；否则，输出“You beat your goal!”。调用该函数，然后观察输出结果。

多次调用该函数，传入不同的 `steps` 和 `goal` 值。观察输出结果，确保输出到控制台的内容与所传入参数的预期值相符。
*/
func progressUpdate(steps : Int, goal : Int){
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
progressUpdate(steps: 10000, goal : 10000)
progressUpdate(steps: 8000, goal: 10000)
progressUpdate(steps: 100, goal: 10000)
progressUpdate(steps: 9000, goal: 10000)
progressUpdate(steps: 4000, goal: 10000)
/*:
你的健身跟踪 app 要帮助跑步者按计划实现他们的目标。编写一个名为 pacing 的函数来接受四个 `Double` 参数：`currentDistance`、`totalDistance`、`currentTime` 和 `goalTime`。该函数应该对用户是否按计划达到或超越 `goalTime` 进行计算。如果是，则输出“Keep it up!”；否则，输出“You've got to push it just a bit harder!”。
*/
func pacing(currentDistance : Double, totalDistance : Double , currentTime : Double, goalTime : Double){
    if(currentTime >= goalTime && currentDistance >= totalDistance){
        print("Keep it up !")
    }
    else{
        print("You've got to push it just a bit harder!")
    }
}
pacing(currentDistance: 1000, totalDistance: 1000, currentTime: 500, goalTime: 500)
//: [上一页](@previous)  |  第 4 页，共 6 页  |  [下一页：练习 - 返回值](@next)
