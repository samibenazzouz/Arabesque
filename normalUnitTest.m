P1=Polygone();
P1.ajouterpoints(x,y);
P1.ajouterpoints(x+incr,y);
P1.ajouterpoints(x+incr,y);
P1.ajouterpoints(x+incr,y+incr);
P1.ajouterpoints(x+incr,y+incr);
P1.ajouterpoints(x,y+incr);
P1.remplircotes();
P1=P1.close();
P1.showpoly()
P1.Patternify(89) 