#biocLite ("hgu95av2cdf") 
require(hgu95av2cdf) 
#biocLite ("hgu95av2probe") 
require(hgu95av2probe) 
#biocLite("affy")
require(affy) 
#biocLite("affydata")
require(affydata) 
#source("customCDF.R")

eset <- justRMA(celfile.path = "cel",  cdfname = "HGU95Av2_Hs_ENTREZG")

# boxplot unnormalized expression levels
boxplot(exprs(eset))

# MA plots for unnormalized data
affyset = ReadAffy(celfile.path="cel")
affyset@cdfName <- "HGU95Av2_Hs_ENTREZG"
MAplot(affyset)
