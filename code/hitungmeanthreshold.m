function [meanTPR,meanFPR,meanTNR,meanFNR] = hitungmeanthreshold(hasil1)
for i=1:length(hasil1)
    sumTPR=0;
    sumFPR=0;
    sumTNR=0;
    sumFNR=0;
    sumasi=0;
    for j=31:length(hasil1{i})
        sumasi=sumasi+1;
        sumTPR=sumTPR+hasil1{i}(j).TPR;
        sumFPR=sumFPR+hasil1{i}(j).FPR;
        sumTNR=sumTNR+hasil1{i}(j).TNR;
        sumFNR=sumFNR+hasil1{i}(j).FNR;
    end
    meanTPR(i)=sumTPR/sumasi;
    meanFPR(i)=sumFPR/sumasi;
    meanTNR(i)=sumTNR/sumasi;
    meanFNR(i)=sumFNR/sumasi;
end
end

