def centuryFromYear(year)
    year%100 == 0 ? year/100 : year/100 + 1
end