classdef SR570Virtual < srs.AbstractSR570 & AsciiComm
    
    properties
    end
    
    properties (Constant)
        
        
    end
    
    properties
        
        dLevel = 0
    end
    
    methods
        
        function this = SR570Virtual(varargin) 
            
        end
           
        
        % Sets the sensitivity of the amplifier See constant props SETTING_*:
        function setSensitivity(this, dVal)
            this.dLevel = dVal;
        end 
                
    end
    
    
    methods (Access = private)
        
        
    end
    
end

