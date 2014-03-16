class BufferedLogger
  def initialize(filename = "buffered_logger.txt")
    @filename = filename
    @current_backlog_array = []
  end

  def filename
    @filename
  end

end