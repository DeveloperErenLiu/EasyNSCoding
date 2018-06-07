***

> 在项目中经常会用到copy、mutableCopy方法，或者调用NSKeyedArchive、NSKeyedUnarchive类方法，这时候就需要实现NSCoding和NSCopying协议。
>
> 这两个协议的代码是固定形式的，每次都是把属性挨个写上去，非常影响开发效率。

***



我写了一个Category，在需要实现NSCoding和NSCopying协议的地方引入这个文件，一行代码即可实现这两个协议。