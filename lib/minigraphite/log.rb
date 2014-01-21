module Dalia
	module MiniGraphite
		class Log
			attr_reader :debug_mode

		  def initialize(debug_mode = true)
		    @debug_mode = debug_mode
		  end

		  def debug(message)
		    return unless debug_mode

		    result = "Dalia::MiniGraphite::Log [#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}]: #{message}"

		    if defined? ::Rails
		      ::Rails.logger.info result
		    else
		      Kernel.puts result
		    end
		  end

		  def log_signal(message)
		    debug "SIGNAL SENT: #{message}"
		  end

		end
	end
end