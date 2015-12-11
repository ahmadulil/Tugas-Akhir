function [meanTPR,meanFPR,meanTNR,meanFNR] = hitungmeanprob(hasil1)
for i=1:length(hasil1)
    sumTPR=0;
    sumFPR=0;
    sumTNR=0;
    sumFNR=0;
    sumasi=0;
%     for j=31:length(hasil1{i})
        sumasi=sumasi+1;
        sumTPR=sumTPR+hasil1(i).TPR;
        sumFPR=sumFPR+hasil1(i).FPR;
        sumTNR=sumTNR+hasil1(i).TNR;
        sumFNR=sumFNR+hasil1(i).FNR;
%     end
    
end
    meanTPR=sumTPR/sumasi;
    meanFPR=sumFPR/sumasi;
    meanTNR=sumTNR/sumasi;
    meanFNR=sumFNR/sumasi;
end

