clear all;

maxNumberIter = 2^30;
nIter = 2^26%randi(maxNumberIter)

maxNumberSteps = 2^10;
nSteps = 20%randi(maxNumberSteps)

progress = ShowLoopProgress(nIter);
progress.setNumberSteps(nSteps)
for i = 1 : nIter
    progress.show(i);
end
    

