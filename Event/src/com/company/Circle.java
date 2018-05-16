package com.company;
import java.awt.Point;

public class Circle {

    public int x, y;
    private int r;
    public int vx, vy;
    public boolean isFilled = false;
    //设置圆心以及速度信息
    public Circle(int x, int y, int r, int vx, int vy){
        this.x = x;
        this.y = y;
        this.r = r;
        this.vx = vx;
        this.vy = vy;
    }
    //获得半径返回
    public int getR() {
        return r;
    }
    //根据信息进行移动
    public void move(int minx, int miny, int maxx, int maxy){
        x += vx;
        y += vy;

        checkCollision(minx, miny, maxx, maxy);
    }
    //每当边界碰到临界位置 就将方向置反
    private void checkCollision(int minx, int miny, int maxx, int maxy){

        if(x - r < minx) { x = r;        vx = -vx; }
        if(x + r >= maxx){ x = maxx - r; vx = -vx; }
        if(y - r < miny) { y = r;        vy = -vy; }
        if(y + r >= maxy){ y = maxy - r; vy = -vy; }
    }
    //将比较结果信息(该点是否在圆内)返回
    public boolean contain(Point p){
        return (x - p.x) * (x - p.x) + (y - p.y) * (y - p.y) <= r * r;
    }

}