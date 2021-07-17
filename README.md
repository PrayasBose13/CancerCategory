# CancerCategory

#A gene is a stretch of DNA inside the cell that tells the cell how to make a specific protein. All cells in the body contain the same genes, but the
genes have different expression levels in different cell types, and cells can regulate gene expression levels in response to their environment. Many
diseases, including cancer, fundamentally involve breakdowns in the regulation of gene expression.The expression profile of cancer cells becomes abnormal, and different
kinds of cancers have different expression profiles.
Our data are gene expression measurements from cells drawn from 64 different tumors.In each case, a device called a microarray(or gene chip) measured the expression of each of 6830 distinct
genes, essentially the logarithm of the chemical concentration of the gene’s product. Thus, each record in the data set is a vector of length 6830. The
cells mostly come from known cancer types, so there are classes, in addition to the measurements of the expression levels.

#Our objectives are to reduce the dimensionality and also to cluster similar cancer types under one umbrella.

#The basic idea to study the genes and then group the different patients to different categories of cancer is what the study thrives for. Its try to identify the cancer
category based on the variables

#Here we are trying to  achieve this dimensional reduction through PCA, this reduced data enchances the speed and effortless computation. We can further 
perform our analysis on this reduced data.Also in this problem we have tried to find out the type of cancer which is mostly clustered wrongly,which gives us an
idea that maybe the procedures and algorithm we are using are not optimum and this results in wrongly classifying few particular cancers. Whose consequences can
be disastraous.
