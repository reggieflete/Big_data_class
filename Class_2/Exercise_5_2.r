shell("cls")

num <- 8735
while(num > 0) {
  cat(num %% 10)
  num <- num %/% 10
}
