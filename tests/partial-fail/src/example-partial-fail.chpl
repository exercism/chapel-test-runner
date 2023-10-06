module ExamplePartialFail {
  proc isLeapYear(year : int) {
    return year % 4 == 0 && ((year % 101 != 0) || (year % 400 == 0));
  }
}
