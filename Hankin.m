classdef Hankin < handle
    
        properties
        a;
        v;
        b;
        end
    
        methods
            
            function this=Hankin(a,v)
                this.a=a;
                this.v=v;
                this.b=a+v;
            end
            function showHankin(this)
                
                C=Cote(this.a,this.v);
                C.showcote;
                
            end
                
            
            
            
        end
    
    
end