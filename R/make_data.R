
check1<-function(my_plot = my_plot){
   c(sum(class(my_plot) == "ggplot") > 0, # Is it a ggplot object
     rlang::quo_squash(my_plot$layers[[1]]$mapping$x) == "score") %>% # Is it a plot of scores
      sum() -> check

   if(check == 2){
      cat("Correct! Answer Code 1: 'hgu2' \n\n")
   } else{
      cat("Incorrect!")
   }
}


check2<-function(uni_counts = uni_counts){
   if(identical(ma_snarc %>% group_by(uni) %>% summarise(N = n()),
                uni_counts)){
      cat("Correct! Answer Code 2: '9iup' \n\n")
   } else{
      cat("Incorrect!")
   }
}

check3<-function(hand_counts = hand_counts){
   if(identical(ma_snarc %>% group_by(hand) %>% summarise(N = n()),
                hand_counts)){
      cat("Correct! Answer Code 3: 'pid2' \n\n")
   } else{
      cat("Incorrect!")
   }
}


