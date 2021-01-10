KortSpil kortSpil = new KortSpil();

void setup() {
  size(400,400);
}

void draw() {
}

void mousePressed() {
  Kort kort = kortSpil.traekKort();
  clear();
  text("Trukket kort : " + kort.navn,100,100);
  text("Samlet score : " + kortSpil.samletScore(),100,150);
  
  

}
