#!/usr/bin/python
class node():
    def __init__(self, k=None, l=None, r=None):
        self.key = k;
        self.left = l;
        self.right = r;


def create(root):
    #为啥raw_input会显示错误
    #我觉得是因为没有导入类
    #查了一下 3.0版本以上 raw_input变为了input

    #raw_input可以用iput代替吗
    #有所区别 raw_input读入任何类型的输入转换成字符串存储
    #而input输入什么就存储什么 数字不会作为字符而是作为整型或者浮点型
    a = input('enter a key:');
    #该以何种形式输入数字串
    #一次一个值 #表示下一个是叶子节点
    if a is '#':
        root = None;
    else:
        #node=node(k=a)啥意思
        #分析上文 我认为k就是key 也就是值
        #查阅得知_init_就是构造函数 只不过使用的时候还是用的node而不是_init_
        root = node(k=a);

        #赋值顺序是咋样的
        #先将节点赋值 再赋值左子节点 再右子节点
        root.left = create(root.left);
        root.right = create(root.right);
        #这个root到底是什么类型的
        #猜测 由于root=node(k=a) 所以它已经变成node类型了
    return root;


def preorder(root):  # 前序遍历
    if root is None:
        return;
    else:
        print(root.key,end=",");
        preorder(root.left);
        preorder(root.right);


def inorder(root):  # 中序遍历
    if root is None:
        return;
    else:
        inorder(root.left);
        print(root.key,end=",");
        inorder(root.right);

def postorder(root):  # 后序遍历
    if root is None:
        return;
    else:
        postorder(root.left);
        postorder(root.right);
        print(root.key,end=",");

root = None;  # 测试代码
#为啥入口函数写到这里
#我认为 由于python是解释型语言 所以在最后传入参数运行函数

#root的变化过程如何
#我认为关键在于#是每个函数的退出按钮 而root是个整体变量
#分析得知 刚开始root就是null 之所以要好几个# 是由于赋值的层数决定的
#具体是如何决定的呢
#总数肯定是2的几次方减一 具体由层数和缺口决定
root = create(root);
#为啥没有输出显示呢
#我猜 是print函数写错了
#的确是print函数写错了 而且还要注意打印空格与回车 可以通过end=实现
preorder(root);
print();
#中序遍历好像是错的
#没有出错 是你把输入的次序搞错了 是按照深度输入的 最左边从上往下1,2,3
inorder(root);
print();
postorder(root);
print();

