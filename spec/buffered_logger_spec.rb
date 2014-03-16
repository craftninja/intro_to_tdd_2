require 'buffered_logger'

describe BufferedLogger do
  it "is initialized with a filepath"
  it "records a log"
  it "records a log with a time and date (one line for each log)"
  it "records up to 4 logs with time and date"
  it "writes stuff to a .txt file once there are 5 logs"
  it "writes more stuff to the text file once there are 5 more logs (10 total, 15 total...)"

end