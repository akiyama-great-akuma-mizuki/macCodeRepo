/*:
## 练习 - 将闭包作为自变量传递以及语法糖

定义一个名为 `forwards` 函数，为其指定两个 `String` 自变量（`name1` 和 `name2`），并使其返回一个 `Bool`。在该函数的定义内，输出每个自变量，然后返回 `name1` 是否小于 `name2`。你可以使用比较运算符（例如 `<` 和 `>`）来比较字符串中的字母顺序。
*/
func forwards(name1 : String, name2 : String) -> Bool {
    print(name1,name2,separator: " ")
    return name1 < name2
}

/*:
使用朋友和家人的名字创建一个 `[String]` 集合。调用该集合的 `sorted(by:)` 函数，将 `forwards` 作为自变量传入。将结果储存到 `sortedCollection1` 中，然后输出结果。应该会按字母顺序对你的集合进行排序。
*/
var NameList : [String] = ["misaka","furukawa","sakura"]
NameList.sort(by:forwards)
print(NameList)

/*:
使用未排序的朋友和家人名字的初始集合，调用该集合的 `sorted(by:)` 函数，但传入你自己的闭包，而不是 `forwards` 函数。闭包应该会以与 `forwards` 相同的方式对集合进行排序。确保在闭包中包含参数名称、参数类型以及 `return` 语句。将结果储存在 `sortedCollection2` 中，然后输出结果。
*/
var NameList2 : [String] = ["misaka","furukawa","sakura"]
NameList2.sort(by:{(name1:String,name2:String) -> Bool in
    return name1 < name2
})
let sortedCollection2 = NameList2
print(sortedCollection2)

/*:
与上一个练习类似，调用该集合的 `sorted(by:)` 函数，但尽可能多地移除不必要的闭包语法。将结果储存在 `sortedCollection3` 中，然后输出结果。
*/
var NameList3 : [String] = ["misaka","furukawa","sakura"]

let sortedCollection3 = NameList3.sorted(by:{$0 < $1})
print(sortedCollection3)
