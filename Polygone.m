
classdef Polygone < handle
    properties
        cotes=[];
        points=[];
        allhankins=[];
        finalh=[];
    end
methods
    
    function this=Polygone()
    end
   
    
    
    function showpoly(this)
        n=length(this.cotes);
        for i=1:n
            this.cotes(i).showcotepoly();
        end
        
    end

    function remplircotes(this)
        total = length(this.points);
        while(total>=4)
            y1=this.points(total);
            x1=this.points(total-1);
            y2=this.points(total-2);
            x2=this.points(total-3);
            C1=Cote([x1,y1],[x2,y2]);
            this.cotes=[this.cotes,C1];
            total=total-4;
        end
        
    end
    
    function this=close(this)
        n=length(this.points);
        x1=this.points(1);
        y1=this.points(2);
        y2=this.points(n);
        x2=this.points(n-1);
        Cfin=Cote([x1,y1],[x2,y2]);
        this.cotes=[Cfin,this.cotes]; 
    end
    
    function ajouterpoints(this,x,y)
        vectest=[x,y];
        this.points=[this.points,vectest];
    end
    
    function result=hankinize(this,theta,longueur)
        n=length(this.cotes);
        result=[];
        for i=1:n/2
            result=[this.cotes(i).hankin(-theta,longueur),result];
            result=[this.cotes(i).hankin(theta+180,longueur),result];
        end
        for i=(n/2)+1:n
            result=[this.cotes(i).hankin(theta,longueur),result];
            result=[this.cotes(i).hankin(-theta+180,longueur),result];
        end
    end
    
    
    function storeHH(this,theta)
        storeHH1(this,theta,30);
        d=this.finddist();
        this.finalh=this.hankinize(theta,d);
    
    end
    
    function storeHH1(this,theta,longueur)
       
       this.allhankins=this.hankinize(theta,longueur); 
        
        
    end
    
    
    
    
    function dd=finddist(this)
        n=length(this.allhankins);
        C1=this.allhankins(2);
        C2=this.allhankins(3);
        n2=length(this.cotes);
        inter=intersection(C1,C2);
        premierpoint=this.cotes(n2).mid();
        finalCote=Cote(premierpoint,inter);
        dd=finalCote.distance();
        
    end

    function Patternify(this,theta)
        this.storeHH(theta);
        for i=1:length(this.allhankins)
            this.finalh(i).showcote()
        end
        
        
    end
        
        
    
    
    
    
    
end 
end