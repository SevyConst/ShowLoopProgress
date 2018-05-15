classdef ShowLoopProgress<handle
    %SHOWLOOPPROGRESS Show progress of any loop with constant number of
    %iterations)
    %   
    %   Show progress of any loop - 10%, 20%, 30%, ..., or 5%, 10%, 15%,
    %   ..., etc - set size of step which you want
    %
    %   The constuctor must called before the loop. The loop must contain 
    %   variable - counter of iterations. This counter is a input argument
    %   of the public method - show. This method be called in every 
    %   iteration.
    %
    %   The class inherits class handle for capability of changing
    %   properties (stupid matlab rule?)
    
    properties (Access = private)
        nIter;       % number of iterations of the loop
        iStep;       % counter of steps
        iterArray;   % if iterCounter in iterArray --> show()
        stepsArray;  % contain for example [0.1, 0.2, ...] (steps)
    end
    
    methods 
        % must be called before the loop
        function obj = ShowLoopProgress(nIter, nSteps)
            if (nIter < nSteps)
                msgID = 'ShowLoopProgress:wrongInput';
                msgtext = strcat('nIter < nSteps');
                throw( MException(msgID, msgtext) ); 
            end
            obj.nIter = nIter;
            obj.iStep = 1;
            
            obj.stepsArray = 1/nSteps : 1/nSteps : 1; 
            obj.iterArray = round(obj.nIter .* obj.stepsArray);
        end
        
        % This method must be called in every iteration.
        function show(obj, iterCounter)
            if (iterCounter >= obj.iterArray(obj.iStep)) 
                disp(strcat(num2str(obj.stepsArray(obj.iStep) * 100), ...
                    '%'));
                obj.iStep = obj.iStep + 1;
            end
        end
    end
end

