class MessageFormatter < ActiveSupport::Logger::SimpleFormatter
  def call(severity, time, progname, msg)
    "#{time}, #{severity}: #{msg} from #{progname}\n"
  end
end