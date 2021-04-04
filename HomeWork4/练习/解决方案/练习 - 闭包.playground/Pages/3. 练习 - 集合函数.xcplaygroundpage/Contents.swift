/*:
## 练习 - 集合函数

通过下面的代码，使用 `map` 函数创建一个 `Int` 值数组，这些值等于原始整数值加 1。在迭代该数组的值时，使用 `$0`。输出结果集合。
*/
let testScores = [65, 80, 88, 90, 47]

let testScoresPlusOne = testScores.map {$0 + 1}
print(testScoresPlusOne)
/*:
通过下面的代码，使用 `filter` 函数创建一个新的 `String` 值数组。新数组应只包含超过四个字符的字符串。在迭代该数组的值时，使用 `$0`。输出结果集合。
*/
let schoolSubjects = ["Math", "Computer Science", "Gym", "English", "Biology"]

let longSubjects = schoolSubjects.filter {$0.characters.count > 4}
print(longSubjects)
/*:
通过下面的代码，使用 `reduce` 函数从起始值 100 中减去数组中的所有值。输出结果值。
*/
let damageTaken = [25, 10, 15, 30, 20]

let remainingHealth = damageTaken.reduce(100) {$0 - $1}
print(remainingHealth)
/*:

_Copyright © 2017 Apple Inc._

_特此授予任何人免费获取本软件及相关文档文件（下文简称“本软件”）副本的权利，允许其无限制地处理本软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或出售本软件副本的权利，并允许本软件的合法用户这样做，但须符合以下条件：_

_上述版权声明和本许可声明应包含在本软件的所有副本或主要部分中。_

_本软件按其现状提供，不作任何明示或默示担保，包括但不限于对适销性、特定用途的适用性和不侵权的保证。在任何情况下，作者或版权所有者均不对因合同、侵权或其他由于使用或处理本软件而引起或与其相关的任何索赔、损害或其他责任负责。_
*/
//: [上一页](@previous)  |  第 3 页，共 3 页
