class BufferedLogger
  def initialize(filename = "buffered_logger.txt")
    @filename = filename
    @current_backlog_array = []
    File.open @filename, 'w' do |f|
      f.write ""
    end
  end

  def filename
    @filename
  end

  def new_log(message, date)
    @current_backlog_text = "#{date.strftime(format = '%FT%R')} - #{message}"
    @current_backlog_array << @current_backlog_text
    if @current_backlog_array.length == 5
      File.open @filename, 'a+' do |f|
        @current_backlog_array.each do |current_backlog_text|
          f.write "#{current_backlog_text}\n"
        end
      end
      @current_backlog_array.clear
    end
  end

  def current_backlog
    @current_backlog_array
  end
end