% Default steps
clear all;

maxNumberIter = 2^30;
nIter = randi(maxNumberIter)

progress = ShowLoopProgress(nIter);
for i = 1 : nIter
    progress.show(i);
end