complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    filenames <- sapply(id,function(x){
        idformat <- formatC(x, width=3, flag="0")
        filename1 = paste(directory, idformat, sep = "/")
        filename2 = paste(filename1, "csv", sep = ".")
        return(filename2)
    })
    
    tables <- lapply(filenames,read.csv)
    nobs <- sapply(tables,function(x){
        good <- complete.cases(x['sulfate'], x['nitrate'])
        length(x[['sulfate']][good])
    })
    data.frame(id,nobs)
}