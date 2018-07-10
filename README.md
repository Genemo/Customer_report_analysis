# Customer_report_analysis-
Pipelines of customer report analysis. 

# Read Me

Author Yuan Liu <annlyuan@genemo.com>

### By running this program, we can use TPM.txt which is generated by .fastq from each sample, to compare with the cancer-related gene set.

- 1. project_path is the folder will save the output files
- 2. sample_path is the folder of TPM.txt file for each sample
- 3. reference_path is the cancer-related gene sets of 17 types of cancer

You can simply adjust the PATHs and run this programe by using follow commend:

```
bash cancer_analysis_f.sh <Input_path> <cancer_reference> <Output_path> <TPM_threshould（optional）> 
```
Example
```
bash cancer_analysis_f.sh ./exp_sample ./cancer_reference ./test  10
```
if you don't name the <TPM_threshould（optional）> the default value is 16.

# INPUT: 
- TPM.txt from sample
- *.xml from cancer-related gene set

# OUTPUT: 
- a folder which is names after corresponding sample, save the data we used for calculating.
- a .txt file which contains the final results of overlapping, .txt have 3 columns of numbers, 
- 1 for # of cancer-related genes, 2 for # of sample genes which meet our threshold value，
3 for # of the overlapping genes of 1&2 

# USEAGE: All you need to do is: 
- 1. Setting the paths 
- 2. Saving data with fixed format into corresponding folders
- 3. Runing this script

(the # of group could change with how many thresholds you want to check, controllsed by variate TPM_threshould）

### Enjoy!
