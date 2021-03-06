module ImageUtils
	extend ActiveSupport::Concern

	module ClassMethods
		def clean_up ; end
	end
end

module ImageProcessing
	extend ActiveSupport::Concern
	include ImageUtils
	included do 
		clean_up
	end
end

# Dependencies are properly resolved
class Image
	include ImageProcessing
end
