classdef Cote < handle
    properties
        A;
        B;
      
        
    end
methods
    
    function res=Cote(input_A,input_B)
       
       for i=1:2
           res.A(i)=input_A(i);
           res.B(i)=input_B(i);
       end
       
    end
    
    
    function showcote(this)
        line([this.A(1) this.B(1)], [this.A(2) this.B(2)],'Color','r','LineWidth',1.5);
    end
    function showcotepoly(this)
        line([this.A(1) this.B(1)], [this.A(2) this.B(2)],'Color','#77AC30','LineWidth',1);
    end
    
    
    function hankinVector=hankin(this,theta,longueur)
        alpha=this.alpha();
        
        d=longueur;
        MID=this.mid();
        gamma=90-theta-alpha;
        x=MID(1)+sind(gamma)*d;
        y=MID(2)+cosd(gamma)*d;
        hankinVector=Cote(MID,[x,y]);

    end
        
        
        
  
    
    function result = mid(this)
       x=(this.A(1)+this.B(1))/2;
       y=(this.A(2)+this.B(2))/2;
       result=[x,y];
        
        
    end
    
    function dist=distance(this)
        dist=sqrt(((this.A(1)-this.B(1))^2)+((this.A(2)-this.B(2))^2));
    end
    
    function al=alpha(this)
       dist=distance(this);
       opp=abs(this.A(2)-this.B(2));
       al=asind(opp/dist);
        
    end
    function inter=intersection(C1,C2)
        ua=((C2.A(1)-C2.B(1))*(C1.A(2)-C2.B(2)) - (C2.A(2)-C2.B(2))*(C1.A(1)-C2.B(1)))/((C2.A(2)-C2.B(2))*(C1.B(1)-C1.A(1)) - (C2.A(1)-C2.B(1))*(C1.B(2)-C1.A(2)));
        %ub=((C1.B(1)-C1.A(1))*(C1.A(2)-C2.B(2)) - (C1.B(2)-C1.A(2))*(C1.A(1)-C2.B(1)))/((C2.A(2)-C2.B(2))*(C1.B(1)-C1.A(1)) - (C2.A(1)-C2.B(1))*(C1.B(2)-C1.A(2)));
        resx=C1.A(1)+ua*(C1.B(1)-C1.A(1));
        resy=C1.A(2)+ua*(C1.B(2)-C1.A(2));
        inter=[resx,resy];
    
    end
    
    
    
end
end