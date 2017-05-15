int step = 20;
int[][] lines;
int line_number = 5;

int[] random_line(int len) {
    int[] array = new int[len];
    float ynoise = random(1);
    for (int i=0; i<len; i++) {
        array[i] = floor(noise(ynoise + i + 10) * 160 - 80);
    }
    return array;
}

void setup() {
    size(500, 300);
    frameRate(24);

    lines = new int[line_number][width / step + 1];
    for (int i=0; i<lines.length; i++) {
        lines[i] = random_line(width / step + 1);
    }
}

void draw_line(int[] line, int n) {
    stroke(200 + 5 * n, 40 + 5 * n, 100 + 5 * n);
    strokeWeight(n * 2.5);
    for (int i=0; i<line.length-1; i++) {
        int x = i * step;
        line(x, line[i], x+step, line[i+1]);
    }
    
}

void draw() {
    translate(0, height / 2);
    background(200);

    for (int i=lines.length-1; i>0; i--) {
        lines[i] = lines[i-1];
    }
    lines[0] = random_line(width / step + 1);
    
    for (int i=0; i<lines.length; i++) {
        draw_line(lines[i], i);
    }
}
