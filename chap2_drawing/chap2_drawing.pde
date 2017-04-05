size(500, 300);
smooth();
background(230);

float half_width = width / 2;
float half_height = height / 2;

stroke(130, 0, 0);
strokeWeight(4);
line(half_width - 70, half_height - 70, half_width + 70, half_height + 70);
line(half_width + 70, half_height - 70, half_width - 70, half_height + 70);

fill(255, 150);
ellipse(half_width, half_height, 50, 50);
