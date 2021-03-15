/*:
## 练习 - 定义基类

- Note:(注)：\
下面的练习基于一个太空飞船避开太空障碍物的游戏。飞船位于坐标系的底部，当障碍物从上向下“坠落”时，飞船只能向左或向右移动。在整个练习中，你将创建不同的类来代表可在游戏中使用的不同类型的太空飞船。

创建一个具有以下三个变量属性的 `Spaceship` 类：`name`、`health` 和 `position`。`name` 的默认值应为空字符串，`health` 应为 0。`position` 将由 `Int` 来表示，如果为负数，则将飞船向左移动；如果为正数，则将飞船向右移动。`position` 的默认值应为 0。
*/
class Spaceship{
    var name : String = ""
    var health : Int = 0
    var position : Int = 0
    func moveLeft(){
        position -= 1
    }
    func moveRight()  {
        position += 1
    }
    func wasHit(){
        health -= 5
    }
}

/*:
创建一个名为 `falcon` 的 `let` 常量，将其分配给 `Spaceship` 实例。在初始化后，将 `name` 设置为“Falcon”。
*/
let falcon = Spaceship()
falcon.name = "Falcon"

/*:
向前面 `Spaceship` 的定义中添加一个名为 `moveLeft()` 的方法。此方法应该将太空飞船向左移动一个位置。添加一个名为 `moveRight()` 的类似方法来向右移动太空飞船。添加好这些方法后，使用它们将 `falcon` 向左移动两次，向右移动一次。在每次更改位置后，输出 `falcon` 的新位置。
*/
falcon.moveLeft()
print(falcon.position)
falcon.moveLeft()
print(falcon.position)
falcon.moveRight()
print(falcon.position)

/*:
在此示例中，`Spaceship` 最后需要一个方法来处理飞船撞到障碍物之后的情况。向前面的 `Spaceship` 中添加一个名为 `wasHit()` 的方法，以 5 递减飞船的生命值，如果 `health` 低于或等于 0，则输出“Sorry. Your ship was hit on too many times. Do you want to play again?”。添加好此方法后，对 `falcon` 调用该方法，然后输出 `health` 的值。
*/
falcon.wasHit()
print(falcon.health)
if(falcon.health <= 0){
    print("Sorry. Your Ship was hit on too many times. Do you want to play again?")
}

//: 第 1 页，共 4 页  |  [下一页：练习 - 创建子类](@next)
