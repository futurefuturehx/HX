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
    if a is '#':
        root = None;
    else:
        root = node(k=a);
        root.left = create(root.left);
        root.right = create(root.right);
    return root;


def preorder(root):  # 前序遍历
    if root is None:
        return;
    else:
        print
        root.key;
        preorder(root.left);
        preorder(root.right);


def inorder(root):  # 中序遍历
    if root is None:
        return;
    else:
        inorder(root.left);
        print
        root.key;
        inorder(root.right);


def postorder(root):  # 后序遍历
    if root is None:
        return;
    else:
        postorder(root.left);
        postorder(root.right);
        print
        root.key;


root = None;  # 测试代码

#为啥写到这里
#我觉得是从这里开始运行
root = create(root);
preorder(root);
inorder(root);
postorder(root);

