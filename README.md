# FrankenSeq

FrankenSeq is a comprehensive analysis platform for the clustering of scRNA-seq data.

As input, FrankenSeq accepts either SingleCellExperiment or Seurat objects as RDS files, or a Gene x Cell matrix CSV file.

FrankenSeq is composed of six tabs - ‘Quality Control’, ‘Feature Selection’,  ‘Dimension Reduction’, ‘Cluster Validation’, ‘Unsupervised Learning’ and ‘Download Data’.

These tabs are intended to be used in sequence, with each accepting as an input the output of the tab before it. The output of the first five tabs is a Seurat object containing 
the combined results of the analysis so far. The output of ‘Download Data’ is a CSV file containing either a summary of the final cluster assignments, the full cluster 
assignments, or the specific genes selected by the chosen feature selection algorithm.
 
 This pipeline is reactive - any changes made to earlier steps in the analysis cause alterations in the results of any steps below them. For example, changing the Feature 
 Selection option results in the recalculation of both the dimension reduction and cluster analysis results.
 
 The exception here is ‘Cluster Validation’ - this tab is optional. It can be skipped, and alterations made to its parameters do not impact downstream analysis.

![](Figures/PipelineFlowchart.jpg)
