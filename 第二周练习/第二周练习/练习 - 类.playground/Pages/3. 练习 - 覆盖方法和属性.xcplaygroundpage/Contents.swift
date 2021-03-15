/*:
## 练习 - 覆盖方法和属性

 - Note:(注)：\
下面的练习基于一个太空飞船避开太空障碍物的游戏。飞船位于坐标系的底部，当障碍物从上向下“坠落”时，飞船只能向左或向右移动。在整个练习中，你将创建不同的类来代表可在游戏中使用的不同类型的太空飞船。下面是为你提供的基类 `Spaceship` 和一个子类 `Fighter`。
*/
class Spaceship {
   var name: String = ""
   var health = 100
   var position = 0
   
   func moveLeft() {
       position -= 1
}
   
   func moveRight() {
       position += 1
}
   
   func wasHit() {
       health -= 5
}
}

class Fighter: Spaceship {
   var weapon = ""
   var remainingFirePower = 5
   
   func fire() {
       if remainingFirePower > 0 {
           remainingFirePower -= 1
       } else {
           print("You have no more fire power.")
}
}
}
/*:
定义一个继承自 `Fighter` 的新类 `ShieldedShip`。添加一个默认值为 25 的变量属性 `shieldStrength`。创建一个名为 `defender` 的新 `ShieldedShip` 实例。将 `name` 设置为“Defender”，将 `weapon` 设置为“Cannon”。调用 `moveRight()` 并输出 `position`，然后调用 `fire()` 并输出 `remainingFirePower`。
*/
class ShieldedShip : Fighter{
    var shieldStrength : Int = 25
    override func wasHit() {
        if(shieldStrength > 0)
        {
            shieldStrength -= 5
        }
        else{
            super.wasHit()
        }
    }
}
var defender = ShieldedShip()
defender.name = "Defender"
defender.weapon = "Cannon"
defender.moveRight()
print(defender.position)
defender.fire()
print(defender.remainingFirePower)
   
/*:
返回到 `ShieldedShip` 的声明，覆盖 `wasHit()`。在该方法的主体中，检查 `shieldStrength` 是否大于 0。如果是，则以 5 递减 `shieldStrength`。否则，以 5 递减 `health`。对 `defender` 调用 `wasHit()`，并输出 `shieldStrength` 和 `health`。
*/
defender.wasHit()
print(defender.shieldStrength)
print(defender.health)

/*:
当 `shieldStrength` 等于 0 时，`wasHit()` 仅会以 5 递减 `health`。这与 `Spaceship` 的 `wasHit()` 实现所执行的操作完全一样！你可以不重写该方法，而改为调用 `wasHit()` 的超类实现。返回到 `ShieldedShip` 的 `wasHit()` 实现，将以 5 递减 `health` 的代码移除，然后替换为调用该方法的超类实现。对 `defender` 调用 `wasHit()`，然后输出 `shieldStrength` 和 `health`。
*/
defender.wasHit()
print(defender.shieldStrength)
print(defender.health)

//: [上一页](@previous)  |  第 3 页，共 4 页  |  [下一页：练习 - 类成员构造器和引用](@next)
