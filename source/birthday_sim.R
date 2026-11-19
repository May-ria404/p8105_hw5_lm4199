birthday_sim = function(n) {

  birthdays =
    sample(
      1:365,
      size = n,
      replace = TRUE
    )

  shared_birthday = n_distinct(birthdays) < n

  return(shared_birthday)

}
