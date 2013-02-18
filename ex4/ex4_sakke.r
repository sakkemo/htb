# boxplot unnormalized expression levels
boxplot(exprs(eset))

## 1
# a) Download the CEL files ...
# b) Read the data
affyset = ReadAffy("N01__normal.CEL",
                   "N02__normal.CEL",
                   "N03__normal.CEL",
                   "N04__normal.CEL",
                   "N05__normal.CEL",
                   "N06__normal.CEL",
                   "N10__normal.CEL",
                   "N11__normal.CEL",
                   "N13__normal.CEL",
                   "T01__tumor.CEL",
                   "T02__tumor.CEL",
                   "T03__tumor.CEL",
                   "T04__tumor.CEL",
                   "T05__tumor.CEL",
                   "T06__tumor.CEL",
                   "T10__tumor.CEL",
                   "T11__tumor.CEL",
                   "T13__tumor.CEL",
                   celfile.path="./cel/")
affyset@cdfName <- "HGU95Av2_Hs_ENTREZG"

# c) Plot spot intensity histograms and-or boxplots for each array using raw, unnormalized data. Try also taking logarithm of the data.
pdf("intensity.pdf")
boxplot(affyset)
dev.off()

# MA plots for unnormalized data

pdf("affyplots.pdf")
MAplot(affyset)
dev.off()
