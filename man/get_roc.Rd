\name{get_roc}
\alias{get_roc}
\title{get_roc}
\description{
This function generates Receiver Operating Characteristic curves
using SVM and Logistic Regression as classifiers.
}
\usage{
get_roc(dataA, classlabels, classifier = "svm", kname = "radial", 
rocfeatlist = seq(2, 10, 1), rocfeatincrement = TRUE, 
testset = NA, testclasslabels = NA, mainlabel = NA)
}
\arguments{
  \item{dataA}{
R object for feature table with only differentially expressed features. 
This is the training set.
}
  \item{classlabels}{
Class labels vector.
}
  \item{classifier}{
Classification algorithm to be used for ROC analysis. 
svm: Support Vector Machine
logitreg: Logistic Regression
eg: "svm" or "logitreg"
}
  \item{kname}{
Kernel for SVM. eg: "radial"
}
  \item{rocfeatlist}{
Vector indicating number of features to be used for ROC
evaluation: eg: c(2,4,6) will generate ROC for top 2, top 4,
and top 6 feautres. Default: seq(2,10,1)
}
  \item{rocfeatincrement}{
Turns on or off forward selection. eg: TRUE or FALSE
}
  \item{testset}{
R object for test feature table with only differentially expressed features. 
This is the test set.
}
  \item{testclasslabels}{
Class labels vector for samples in the test set.
}
  \item{mainlabel}{
Main text label for the ROC plot. 
eg: "Group A vs B ROC curve"
}
}
\details{
Function to perform ROC curve analysis
using only traning set or using both
training and test set.
}
\value{
PDF file with ROC plot
}
