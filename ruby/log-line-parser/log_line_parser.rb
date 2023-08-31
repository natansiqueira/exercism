class LogLineParser
  attr_reader :log_level, :message

  def initialize(line)
    @log_level, @message = line.gsub(/[\[\]]/, '').split(':')
    @log_level = @log_level.downcase
    @message = @message.strip
  end

  def reformat
    "#{@message} (#{@log_level})"
  end
end
