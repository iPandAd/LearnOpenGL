# LearnOpenGL

## Prerequisites

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential git curl wget cmake -y
sudo apt install libglfw3-dev -y
```

## Hello Triangle

标准化设备坐标：Normailized Device Coordinates，3 个轴在 -1.0 到 1.0 范围内

顶点缓冲对象：Vertex Buffer Objects

`glGenBuffers`生成带缓冲ID的对象

`glBindBuffer`把新创建的缓冲绑定到目标上

`glBufferData`把之前定义的数据复制到缓冲的内存中

`glVertexAttribPointer`第一个参数指定我们要配置的顶点属性，第二个参数指定顶点属性的大小，第三个参数指定数据的类型，第四个参数定义是否希望数据被标准化，第五个参数指定连续顶点属性组间隔，第六个参数表示位置数据在缓冲中起始位置的偏移量

顶点数组对象：Vertex Array Object

元素缓冲对象：Element Buffer Object

绑定 VAO 时，绑定的最后一个元素缓冲区对象存储为 VAO 的元素缓冲区对象。然后，绑定到 VAO 也会自动绑定该 EBO

## Shaders

着色器之间唯一的沟通只有通过输入和输出

每个着色器的入口点都是`main`函数

顶点着色器需要为它的输入提供一个额外的`layout`标识，这样才能把它链接到顶点数据

片段着色器需要一个`vec4`颜色输出变量

当类型和名字都一样的时候，OpenGL 就会把两个变量链接到一起，它们之间就能发送数据了

uniform 是另一种从我们的应用程序在 CPU 上传递数据到 GPU 上的着色器的方式，但 uniform 和顶点属性有些不同。uniform 是全局的，必须在每个着色器程序对象中都是独一无二的，而且可以被着色器程序的任意着色器在任意阶段访问；无论 uniform 值设置成什么，uniform 会一直保存他们的数据，直到被重置或更新

如果声明了一个 uniform 却在 GLSL 代码中没用过，编译器会静默移除这个变量，导致最后编译出的版本中并不会包含它

查询 uniform 地址不要求你之前使用过着色器程序，但是更新一个 uniform 之前你必须先使用程序，因为是在当前激活的着色器程序中设置 uniform 的

OpenGL 核心是一个 C 库，不支持类型重载
