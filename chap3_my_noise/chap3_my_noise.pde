float myRandom() {
    // コクがすこし出た乱数
    float ret = random(1) * random(1);
    return ret;
}

void setup() {
    size(500, 100);
    background(255);
    strokeWeight(5);
    smooth();

    stroke(0, 30);
    line(20, 50, 480, 50);

    float xstep = 1;
    float lastx = -999;
    float lasty = -999;
    float y = 50;
    for (int x=20; x<=480; x+=xstep) {
        y = 50 + myRandom() * 80;
        if (lastx > -999) {
            line(x, y, lastx, lasty);
        }
        lastx = x;
        lasty = y;
    }
}
   
