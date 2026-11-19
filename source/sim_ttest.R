sim_ttest = function(mu, n = 30, sigma = 5) {

  sim_df =
    tibble(
      x = rnorm(n = n, mean = mu, sd = sigma)
    )

  test_result =
    t.test(sim_df$x, mu = 0)

  return_df =
    broom::tidy(test_result) |>
    select(estimate, p.value)

  return(return_df)

}