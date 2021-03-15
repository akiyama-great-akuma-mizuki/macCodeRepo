/*:
## 练习 - 创建子类

 - Note:(注)：\
下面的练习基于一个太空飞船避开太空障碍物的游戏。飞船位于坐标系的底部，当障碍物从上向下“坠落”时，飞船只能向左或向右移动。在整个练习中，你将创建不同的类来代表可在游戏中使用的不同类型的太空飞船。下面是为你提供的基类 `Spaceship`。
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
/*:
定义一个继承自 `Spaceship` 的新类 `Fighter`。添加一个默认值为空字符串的变量属性 `weapon`，以及一个默认值为 5 的变量属性 `remainingFirePower`。
*/
class Fighter : Spaceship{
    var weapon : String = ""
    var remainingFirePower : Int = 5
    func fire(){
        if(remainingFirePower > 0 )
        {
            remainingFirePower -= 1
        }
        else{
            print("You have no more fire power.")
        }
    }
}

/*:
创建一个名为 `destroyer` 的新 `Fighter` 实例。`Fighter` 将能够射击飞过来的物体，以避免与之发生碰撞。在初始化后，将 `weapon` 设置为“Laser”，将 `remainingFirePower` 设置为 10。请注意，`Fighter` 继承自 `Spaceship`，因此其也具有 `name`、`health` 和 `position` 属性，以及 `moveLeft()`、`moveRight()` 和 `wasHit()` 方法，即使你没有特意向 `Fighter` 声明中添加这些属性和方法，也是如此。将 `name` 设置为“Destroyer”，并输出 `position`，然后调用 `moveRight()`，再输出 `position`。
*/
var destroyer = Fighter()
destroyer.weapon = "Laser"
destroyer.remainingFirePower  = 10
destroyer.name = "Destroyer"
//print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)


/*:
尝试输出 `falcon` 中的 `weapon`。为什么无法输出？通过注释或 print 语句提供你的答案，并将你所添加的无法编译的代码移除，如下所示。
*/
//print(falcon.weapon)
//falcon是基类对象，没有成员Weapon
/*:
向 `fighter` 添加一个名为 `fire()` 的方法。此方法应检查 `remainingFirePower` 是否大于 0，如果是，则应以 1 递减 `remainingFirePower`。如果 `remainingFirePower` 不大于 0，则输出“You have no more fire power.”。对 `destroyer` 调用几次 `fire()`，并在每次调用该方法后输出 `remainingFirePower`。
*/
for _ in 1...11{
    destroyer.fire()
    print(destroyer.remainingFirePower,separator: "",terminator: " ")
}

//: [上一页](@previous)  |  第 2 页，共 4 页  |  [下一页：练习 - 覆盖方法和属性](@next)
