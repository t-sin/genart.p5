int diam = 10;
float center_x, center_y;

void setup() {
    size(500, 300);
    frameRate(24);
    smooth();
    background(180);
    center_x = width / 2;
    center_y = height / 2;
    stroke(0);
    strokeWeight(5);
    fill(255, 50);
}

void draw() {
    if (diam <= 400) {
        // background(180);
        ellipse(center_x, center_y, diam, diam);
        diam +=5;
    }
}
