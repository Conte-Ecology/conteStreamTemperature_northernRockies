addInteractions <- function(data, covars) {
  data <- data %>% 
    dplyr::mutate(intercept = 1, 
                  airTemp.flow = airTemp * 
                    flow_accum, 
                  intercept.site = 1, 
                  airTemp.prcp = airTemp * prcp, 
                  intercept.year = 1, 
                  lake.glacier = Lake * glacier2,
                  dOY2 = dOY^2, 
                  dOY3 = dOY^3)
  
  return(data)
}

