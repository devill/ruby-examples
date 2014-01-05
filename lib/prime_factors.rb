def prime_factors(i)
  if i == 1
    return []
  end

  result = []

  factor = 2
  while factor <= i
    while i % factor == 0
      result << factor
      i /= factor
    end
    factor += 1
  end

  result
end