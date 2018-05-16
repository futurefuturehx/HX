package com.company;
import java.awt.*;
import java.awt.geom.Ellipse2D;

import java.lang.InterruptedException;
//这个类用来包含很多工具类
public class AlgoVisHelper {
    private AlgoVisHelper(){}

    public static void strokeCircle(Graphics2D g, int x, int y, int r){

        Ellipse2D circle = new Ellipse2D.Double(x-r, y-r, 2*r, 2*r);
        g.draw(circle);
    }

    public static void fillCircle(Graphics2D g, int x, int y, int r){
//Ellipse2D用来检查存储数据 Graphics2D用来画图形
        Ellipse2D circle = new Ellipse2D.Double(x-r, y-r, 2*r, 2*r);
        g.fill(circle);
    }

    public static void setColor(Graphics2D g, Color color){
//将画笔的颜色设置为指定颜色 
        g.setColor(color);
    }
//设置实线规格 然后把它画出来
    public static void setStrokeWidth(Graphics2D g, int w){
        int strokeWidth = w;
        g.setStroke(new BasicStroke(strokeWidth, BasicStroke.CAP_ROUND, BasicStroke.JOIN_ROUND));
    }
//设置停顿并且打印信息
    public static void pause(int t) {
        try {
            Thread.sleep(t);
        }
        catch (InterruptedException e) {
            System.out.println("Error sleeping");
        }
    }

}
