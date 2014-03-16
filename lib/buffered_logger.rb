class BufferedLogger
  def initialize(filename = "buffered_logger.txt")
    @filename = filename
    @current_backlog_array = []
  end

  def filename
    @filename
  end

  def new_log(message, date)
    @current_backlog_text = "#{date.strftime(format = '%FT%R')} - #{message}"
    @current_backlog_array << @current_backlog_text
  end

  def current_backlog
    @current_backlog_array
  end
end