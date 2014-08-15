best <- function(state, outcome) {
    ## Read outcome data
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    state<-as.character(state)
    outcome<-as.character(outcome)
    ## Check that state and outcome are valid
    if(!is.element(state,data$State)) {
        stop("invalid state")
    }
    
    if(outcome == "heart attack") {
        newdata = subset(data, data$State==state)
        retData = newdata[which(newdata[,11]==min(newdata[,11],na.rm=TRUE)),2]    
    }
    else if(outcome == "heart failure") {
        newdata = subset(data, data$State==state)
        retData = newdata[which(newdata[,17]==min(newdata[,17],na.rm=TRUE)),2]    
    }
    else if(outcome == "pneumonia") {
        newdata = subset(data, data$State==state)
        retData = newdata[which(newdata[,23]==min(newdata[,23],na.rm=TRUE)),2]    
    }
    else {
        stop("invalid outcome")
    }
    ## Return hospital name in that state with lowest 30-day death
    if(length(retData)>1) {
        retData=sort(retData)
    }
    print(retData[1])
    ## rate
}