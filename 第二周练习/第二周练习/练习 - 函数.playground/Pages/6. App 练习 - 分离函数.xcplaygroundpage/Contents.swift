/*:
## App 练习 - 分离函数

>(注):\
这些练习通过一个健身跟踪 app 来帮助你巩固 Swift 概念。

有一个原则有助于调试和维护代码，即抽象化。例如，你在健身跟踪 app 中编写了一些函数，这些现有函数既执行计算又输出消息。但是，将来你很可能要更改计算或消息。如果将计算与消息分开，再回去更改计算或消息会更容易。

例如，编写一个函数来仅执行先前 `pacing` 函数的部分功能。将此函数命名为 `calculatePace`。它应该接受三个 `Double` 自变量，名称分别为 `currentDistance`、`totalDistance` 和 `currentTime`，然后应该根据用户的当前距离和时间返回一个 `Double` 来表示用户将在何时跑完。调用该函数并输出返回值。
*/
func calculatePace(currentDistance : Double, totalDistance : Double, currentTime : Double) -> Double{
    return (currentTime * totalDistance / currentDistance) - currentTime;
}
var rest = calculatePace(currentDistance: 600, totalDistance: 1000, currentTime: 120)
print("还有\(rest)秒跑完")
/*:
现在编写一个名为 `pacing` 的函数来接受四个 `Double` 自变量：`currentDistance`、`totalDistance`、`currentTime` 和 `goalTime`。该函数还应该返回一个 `String`，用于表示向用户显示的消息。该函数应该调用 `calculatePace`，传入适当的值，并捕获返回值。然后，应该将返回值与 `goalTime` 进行比较。如果用户按计划完成，则返回“Keep it up!”；否则，返回“You've got to push it just a bit harder!”。调用该函数并输出返回值。
*/
func pacing(currentDistance : Double, totalDistance : Double, currentTime : Double, goalTime : Double) -> String{
    let T = calculatePace(currentDistance: currentTime, totalDistance: totalDistance, currentTime: currentDistance) + currentTime
    if(T >= goalTime){
       return "Keep it up!"
    }
    else{
        return "You've got to push it just a bit harder!"
    }
}
var str = pacing(currentDistance: 8000, totalDistance: 1000, currentTime: 120, goalTime: 200)
print(str)
/*:

_Copyright © 2017 Apple Inc._

_特此授予任何人免费获取本软件及相关文档文件（下文简称“本软件”）副本的权利，允许其无限制地处理本软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或出售本软件副本的权利，并允许本软件的合法用户这样做，但须符合以下条件：_

_上述版权声明和本许可声明应包含在本软件的所有副本或主要部分中。_

_本软件按其现状提供，不作任何明示或默示担保，包括但不限于对适销性、特定用途的适用性和不侵权的保证。在任何情况下，作者或版权所有者均不对因合同、侵权或其他由于使用或处理本软件而引起或与其相关的任何索赔、损害或其他责任负责。_
*/
//: [上一页](@previous)  |  第 6 页，共 6 页
