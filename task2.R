#Data Revenue * Expenses
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#solution
length(revenue)
length(expenses)
profit = revenue - expenses
profit

tax= .3*expenses
tax
profit_after_tax = revenue- (tax + expenses)
profit_after_tax

profit_margin =(profit_after_tax/ revenue)* 100
as.integer(profit_margin)

mean_p=mean(profit_after_tax)

good_months<- profit_after_tax >mean_p
good_months
bad_months <- vector()
for(i in profit_after_tax){
  if (i>mean_p){
    good_months<-append(good_months,i)
  } else {
    bad_months<-append(bad_months,i)
  }
}

best_month_value <-max(profit_after_tax)
best_month <- match (best_month_value,profit_after_tax)
best_month
worst_month_value <- min(profit_after_tax)
worst_month <- match(worst_month_value,profit_after_tax)
worst_month
x<-c(1,2,3)
i=4
append(x,i)

