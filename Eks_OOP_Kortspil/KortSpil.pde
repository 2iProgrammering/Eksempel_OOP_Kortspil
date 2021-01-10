class KortSpil {

  ArrayList<Kort> bunke    = new ArrayList<Kort>();
  ArrayList<Kort> trukket  = new ArrayList<Kort>();

  KortSpil() {
    for (int k=1; k<=4; k++){
      for (int v=2; v<=14; v++) {
        String navn=""; 
        int vaerdi=0;
        if (v==14) {
          vaerdi=11; 
          navn = "es";
        }
        if (v==13) {
          vaerdi=10; 
          navn = "konge";
        }   
        if (v==12) {
          vaerdi=10; 
          navn = "dame";
        }
        if (v==11) {
          vaerdi=10; 
          navn = "knægt";
        }
        if (v<=10) {
          vaerdi=v;  
          navn = ""+v;
        }   //...
        if (k==1) navn = "hjerter " + navn;
        if (k==2) navn = "ruder " + navn;
        if (k==3) navn = "klør " + navn;
        if (k==4) navn = "spar " + navn;
        Kort kort = new Kort(navn, vaerdi);
        bunke.add(kort);
      }
    }
  }
  

  Kort traekKort() {
    int nr = int(random(0, bunke.size()));
    Kort k=  bunke.get(nr);
    bunke.remove(k);
    trukket.add(k);
    return k;
  }

  int samletScore() {
    int score =0;
    for (Kort k : trukket){ score+=k.vaerdi;}
    return score;
  }
}
