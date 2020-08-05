FUN <- function(...) {

    # FOR INFORMATION ON WHAT SHOULD BE INCLUED IN THIS FILE, TYPE
    # ?ExperimentHubData::makeExperimentHubMetadata

    data.frame(
        Title="Damond Diabetes Spatial Dataset",
        Description= "We used imaging mass cytometry to simultaneously image 37 biomarkers with single-cell and spatial resolution in pancreas sections from 12 human donors at different stages of type 1 diabetes.",
        BiocVersion="3.12",
        Maintainer="Nicolas Damond <nicolas.damond@uzh.ch>",
        Genome=NA,
        SourceType="ZIP",
        SourceUrl="https://data.mendeley.com/datasets/cydmwsfztj/2/files",
        SourceVersion="1.0",
        RDataPath=file.path("scSpatial", "Damond-Diabetes",
                            "1.0", "spatialCellData.rds"),
        TaxonomyId="NA",
        Coordinate_1_based=T,
        Species= "Homo sapiens",
        DataProvider="Bodenmiller Group",
        RDataClass="data.frame",
        DispatchClass="Rds",
        biocViews="NA"
    )
}

write.csv(file="../extdata/metadata-Damond-Diabetes.csv",
    FUN(),
    row.names=FALSE)
