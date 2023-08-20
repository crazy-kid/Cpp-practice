# C++-practice

- [C++-practice](#c-practice)
  - [NOTE](#note)
  - [继承与多态](#继承与多态)
  - [编程习惯](#编程习惯)

## NOTE

1. 从生成的汇编来看函数传递引用和传递指针没有区别
2. `cout`输出`char*`会把整个字符串打出来，若要打印地址需要做强制转换 `(void *)`
3. 定义类的成员函数时需要用到作用域解析运算符`::`
4. `using`声明使特定的标识符可用，`using namespace`编译指令使整个名称空间可用
5. 不要返回局部变量的引用，因为对应的内存将在函数结束后被销毁，这将造成引用不存在内存的错误
6. 非引用的函数返回值只能作为**右值**，但返回引用的函数可以作为**左值**，要避免这种特性需要在返回值前加上`const`
7. `const`量是无法作为实参传递给非`const`引用形参的但是反过来是可以的：非`const`量可以作为实参传递给`const`引用

    **Example**

    ```C++
    int& f1(int& a);
    const int& f2(int& a);

    int main() {
        int num1 = 1, num2 = 2;
        const int num3 = 3;
        f1(num1) = 5; // NOTE6：可以通过编译，语句执行后num1==5
        f2(num2) = 9; // NOTE6：无法通过编译，f2(num2)无法作为左值
        f1(num3); // NOTE7：无法通过编译
    }

    int& f1(int& a) {
        a++;
        return a;
    }

    const int& f2(int& a) {
        a++;
        return a;
    }    
    ```

8. 函数**重载**时，C++将区分常量和非常量函数的特征标
9. `const`类成员的初始化可以用2种方式初始化：
   1. 构造函数的**初始化列表语法**完成
   2. 类内初始化，但这样只能使用默认值

## 继承与多态

1. C++有3种继承方式：**公有继承**、**保护继承**、**私有继承**
2. 派生类构造函数执行顺序
   1. 创建基类对象
   2. 通过成员初始化列表将基类信息传递给基类构造函数,否则将使用默认的基类构造函数
   3. 初始化派生类新增的数据成员
3. 派生对象过期时，程序将首先调用派生类析构函数，然后在调用基类析构函数
4. 派生类函数调用基类函数时必须使用作用域解析符`::`
5. **多态**，即同一个方法的行为随上下文而异
6. 实现多态公有继承的两种重要机制
   1. 在派生类中重新定义基类方法
   2. 使用**虚方法**
7. 如果没有使用关键字`virtual`，程序将根据引用类型或者指针类型选择方法；如果使用了`virtual`，程序将根须引用或者指针指向的对象的类型来选择方法
8. 方法在基类中被声明为`virtual`后，它在派生类中将自动成为`virtual`方法
9. **函数名联编**有两种：
   1. **静态联编**（早期联编）：在程序编译时就能决定调用函数对应的代码块
   2. **动态联编**（晚期联编）：在程序运行时才能决定调用函数对应的代码块
10. 编译器对虚方法使用动态联编
11. 按值传递会导致派生类的对象只把基类的部分传递给虚函数，下面的例子中`BrassPlus`是`Brass`的公有派生类，`ViewAcct()`是虚函数

    **Example**

    ```C++
    void fr(Brass& rb); // uses rb.ViewAcct()
    void fp(Brass* pb); // uses pb->ViewAcct()
    void fv(Brass  b);  // uses b.ViewAcct()

    int main() {
        Brass b("Billy Bee", 123432, 10000.0);
        BrassPlus bp("Betty Beep", 232313, 12345.0);
        fr(b);  //uses Brass::ViewAcct()
        fr(bp); //uses BrassPlue::ViewAcct()
        fp(b);  //uses Brass::ViewAcct()
        fp(bp); //uses BrassPlue::ViewAcct()
        fv(b);  //uses Brass::ViewAcct()
        fv(bp); //uses Brass::ViewAcct()
    }
    ```

12. 编译器处理虚函数的方法：给每个对象添加一个隐藏成员。隐藏成员中保存了一个指向函数地址数组的指针。这种数组称为**虚函数表**。虚函数表中存储了为类对象进行声明的虚函数地址
13. 使用虚函数时，对于每一个类，编译器都创建一个虚函数地址表（数组），每一个对象都创建一个指针
14. 构造函数不能是虚函数；析构函数应该是虚函数，除非类不用做基类；友元不能是虚函数，因为友元不是类成员

## 编程习惯

1. 在Linux下应当使用g++编译cpp文件而不是gcc,因为gcc似乎不会自动链接库
2. 使用`typedef`能够有效地简化复杂结构的声明
3. 一个强壮的`class`中至少应该有
   1. **默认构造函数**：（也能用带默认参数的构造函数替代）
   2. **复制构造函数**：以下情况将调用
      - `TypeName newObject = TypeName(object)`
      - `TypeName newObject = object`
      - 函数按值返回对象
   3. **默认析构函数**
   4. **赋值运算符**：（处理`object1 = object2`，需要实现深度复制）
   5. **地址运算符**：（通常不用特别处理）
4. 无法立刻提供复制构造函数和赋值运算符时可以采取**伪私有方法**防止程序崩溃
5. 如果要在派生类中重新定义基类的方法，则将它设置为虚方法；否则设置为非虚方法
6. 通常应给基类提供一个**虚析构函数**，即使它并不需要析构函数
7. **重新定义**的两条经验规则
   1. **返回类型协变**： 如果重新定义继承的方法，应确保与原来的原型完全相同，但如果返回类型是基类引用或指针，则可以修改为指向派生类的引用或指针
   2. 如果基类声明被重载了，则应在派生类中重新定义所有的基类版本
