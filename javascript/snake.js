<canvas id="gc" widht="400" height="400"></canvas>
<script>
    windows.onload=function(){
        canv=document.getElementById("gc");
        ctx=canv.getContex("2d");
        document.addEventListener("keydown",keyPush);
        setIntervail(game,1000/15);
    }
    px=px=10;
    gs=tc=20;
    ax=ay=15;
    xv=yv=0;
    function game(){
    }
    function keyPush(evt){
        switch(evt.keyCode){
            case 37:
                xv=0;yv=0;
                break;
            case 38:
                xv=0;yv=0;
                break;
            case 39:
                xv=0;yv=0;
                break;
            case 40:
                xv=0;yv=0;
                break;
        }
    }
</script>