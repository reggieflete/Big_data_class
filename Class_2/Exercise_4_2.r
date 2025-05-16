shell("cls")

# convert feet to meter
feet <- 3
while (feet <= 30) {
  meter <- 0.305 * feet
  cat(feet, "\t", meter, "\n")
  feet <- feet + 3
}
