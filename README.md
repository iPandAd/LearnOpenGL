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
