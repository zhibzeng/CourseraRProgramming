corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    
    filenames <- dir(directory)
    filenames <- paste(directory,filenames,sep = "/")
    tables <- lapply(filenames,read.csv)
    cr <- c()
    for(data in tables){
        data <- data[complete.cases(data),]
        if ( nrow(data) > threshold ) {
            cr <- c(cr, cor(data$sulfate, data$nitrate) ) # append corralations
        }
    }
    return(cr)
}