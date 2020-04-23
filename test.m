

%Ici on specifie la hauteur maximale et la largeur maximale
Largeur=400;
Hauteur=400;
axis([0 Largeur 0 Hauteur]);

%on choisis un increment (cela aura un impact sur le nombre d'etoiles sur notre pattern)
incr=50;
%et puis on loop le tout et le tour est joué
for x=0:incr:Largeur
    for y=0:incr:Hauteur
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
        P1.Patternify(30)    
    end    
end
%on choisis un increment (cela aura un impact sur le nombre d'etoiles sur notre pattern)
incr=25;
%et puis on loop le tout et le tour est joué
for x=0:incr:Largeur
    for y=0:incr:Hauteur
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
        P1.Patternify(30)    
    end    
end