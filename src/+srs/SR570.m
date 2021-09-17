classdef SR570 < srs.AbstractSR570 & AsciiComm
    
    properties
    end
    
    properties (Constant)
                
    end
    
    properties
        
        
    end
    
    properties (Access = private)
        
        dSensitivity = 5; % this is not a value, it is one of the 30 allowed values on the hardware
        lHasSet = false;
        
    end
    
    methods
        
        function this = SR570(varargin) 
            
            % Call superclass constructor
            this = this@AsciiComm(varargin{:});
            
            % Defaults
            this.cConnection = this.cCONNECTION_SERIAL;
            this.u8TerminatorWrite = uint8([13 10]);
            this.u8TerminatorRead = uint8([13 10]);
            
            % Overwrite with params
            for k = 1 : 2: length(varargin)
                this.msg(sprintf('passed in %s', varargin{k}));
                if this.hasProp( varargin{k})
                    this.msg(sprintf('settting %s', varargin{k}));
                    this.(varargin{k}) = varargin{k + 1};
                end
            end
            
            this.init(); % AsciiComm.init()
            
        end
           
        
        % Sets the sensitivity of the amplifier See constant props SETTING_*:
        function setSensitivity(this, dVal)
            cCmd = sprintf('SENS %d', dVal);
            this.writeAscii(cCmd);
            this.lHasSet = true;
            this.dSensitivity = dVal; % storage for returning in get
        end 
        
        function [dVal, lSuccess] = getSensitivity(this)
            dVal = this.getAmpsPerVoltFromSetting(this.dSensitivity);
            lSuccess = this.lHasSet; % only return success if we have called set once since the hardware has no read capability
            
        end
                
    end
    
    
   

end


