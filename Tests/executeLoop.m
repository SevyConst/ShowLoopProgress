function [ output_args ] = executeLoop( nIter, nSteps )
%EXECUTELOOP this function is used in tests for ShowLoopProgress
%   Detailed explanation goes here
    progress = ShowLoopProgress(nIter, nSteps);
    for i = 1 : nIter
        progress.show(i);
    end
end

