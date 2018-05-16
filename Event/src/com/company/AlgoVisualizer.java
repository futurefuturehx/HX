package com.company;
import java.awt.*;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class AlgoVisualizer {

    private Circle[] circles;
    private AlgoFrame frame;
    private boolean isAnimated = true;
    //此函数用来设置宽度 高度 以及圆的个数
    public AlgoVisualizer(int sceneWidth, int sceneHeight, int N){

        // 初始化数据
        circles = new Circle[N];
        int R = 50;
        //Math.random()就是0到1的随机数 
        for(int i = 0 ; i < N ; i ++){
            int x = (int)(Math.random()*(sceneWidth-2*R)) + R;
            int y = (int)(Math.random()*(sceneHeight-2*R)) + R;
            int vx = (int)(Math.random()*11) - 5;
            int vy = (int)(Math.random()*11) - 5;
            circles[i] = new Circle(x, y, R, vx, vy);
        }

        // 初始化视图
        EventQueue.invokeLater(() -> {
            frame = new AlgoFrame("Welcome", sceneWidth, sceneHeight);
            frame.addKeyListener(new AlgoKeyListener());
            frame.addMouseListener(new AlgoMouseListener());
            new Thread(() -> {
                run();
            }).start();
        });
    }

    // 动画逻辑
    private void run(){

        while(true){
            // 绘制数据
            frame.render(circles);
            AlgoVisHelper.pause(20);

            // 更新数据
            if(isAnimated)
                for(Circle circle : circles)
                    circle.move(0, 0, frame.getCanvasWidth(), frame.getCanvasHeight());
        }
    }

    private class AlgoKeyListener extends KeyAdapter{

        @Override
        //只要键盘输入是空格 就将值设置为false
        //将实际操作转变为逻辑操作
        public void keyReleased(KeyEvent event){
            if(event.getKeyChar() == ' ')
                isAnimated = !isAnimated;
        }
    }

    private class AlgoMouseListener extends MouseAdapter{

        @Override
        public void mousePressed(MouseEvent event){

            //System.out.println(event.getPoint());
            event.translatePoint(0,
                    -(frame.getBounds().height - frame.getCanvasHeight()));
            //如果现实中鼠标点击在圆形中 就将逻辑临时变量设置为false
            for(Circle circle : circles)
                if(circle.contain(event.getPoint()))
                    circle.isFilled = !circle.isFilled;
        }
    }

    public static void main(String[] args) {

        int sceneWidth = 800;
        int sceneHeight = 800;
        int N = 10;

        AlgoVisualizer visualizer = new AlgoVisualizer(sceneWidth, sceneHeight, N);
    }
}