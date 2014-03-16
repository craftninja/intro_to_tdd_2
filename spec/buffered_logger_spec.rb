require 'buffered_logger'
require 'date'

describe BufferedLogger do
  it "is initialized with a filepath" do
    buff_log=BufferedLogger.new
    expected = 'buffered_logger.txt'
    actual = buff_log.filename
    expect(actual).to eq expected
  end

  it "records a log with time and date" do
    buff_log=BufferedLogger.new
    buff_log.new_log("I coded in ruby all day... fun!", Date.new(2014, 3, 15))
    expected = ["2014-03-15T00:00 - I coded in ruby all day... fun!"]
    actual = buff_log.current_backlog
    expect(actual).to eq expected
  end

  it "records mult logs with a time and date" do
    buff_log=BufferedLogger.new
    buff_log.new_log("I coded in ruby all day... fun!", Date.new(2014, 3, 15))
    buff_log.new_log("I hit a wall... time to make some tea.", Date.new(2014, 3, 16))
    expected = ["2014-03-15T00:00 - I coded in ruby all day... fun!", "2014-03-16T00:00 - I hit a wall... time to make some tea."]
    actual = buff_log.current_backlog
    expect(actual).to eq expected
  end

  it "writes stuff to a .txt file once there are 5 logs" do
    buff_log=BufferedLogger.new
    buff_log.new_log("I coded in ruby all day... fun!", Date.new(2014, 3, 15))
    buff_log.new_log("I hit a wall... time to make some tea.", Date.new(2014, 3, 16))
    buff_log.new_log("I coded in ruby all day... fun!", Date.new(2014, 3, 17))
    buff_log.new_log("I hit a wall... time to make some tea.", Date.new(2014, 3, 18))
    buff_log.new_log("I coded in ruby all day... fun!", Date.new(2014, 3, 19))
    expected = "2014-03-15T00:00 - I coded in ruby all day... fun!\n2014-03-16T00:00 - I hit a wall... time to make some tea.\n2014-03-17T00:00 - I coded in ruby all day... fun!\n2014-03-18T00:00 - I hit a wall... time to make some tea.\n2014-03-19T00:00 - I coded in ruby all day... fun!\n"
    actual = File.read buff_log.filename
    expect(actual).to eq expected
  end

  it "writes more stuff to the text file once there are 5 more logs (10 total, 15 total...)"

end