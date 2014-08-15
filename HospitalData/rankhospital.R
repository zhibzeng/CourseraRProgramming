    rankhospital <- function(state, outcome, num = "best") {
    ## Read outcome data
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    ## Check that state and outcome are valid
    if(!is.element(state,data$State)){
        stop("invalid state")
    }
    
    if(outcome == "heart attack") {
        retData <- data[data$State == state, c(2, 11)]
    }
    else if(outcome == "heart failure") {
        retData <- data[data$State == state, c(2, 17)]
    }
    else if(outcome == "pneumonia") {
        retData <- data[data$State == state, c(2, 23)]
    }
    else {
        stop("invalid outcome")
    }   
    ## Return hospital name in that state with the given rank
    retData[,2] <- as.numeric(retData[,2])
    ordered_data_for_state <- order(retData[2], retData$Hospital.Name, na.last=NA)
    
    if (num == "best") {
        as.character(retData$Hospital.Name[ordered_data_for_state[1]])
    } else if (num == "worst") {
        as.character(retData$Hospital.Name[ordered_data_for_state[length(ordered_data_for_state)]])
    } else if (is.numeric(num)) {
        as.character(retData$Hospital.Name[ordered_data_for_state[num]])
    } else {
        stop("invalid num")
    }
    
}