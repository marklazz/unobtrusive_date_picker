# This commented out because it raises a 'Stack level too deep' Exception
# when some Rails helpers are being used (like select_datetime or select_time).
# Also this file is only concerned with am/pm functionality which is going to be natively
# included in Rails 3.1.
#require '12_hour_time'
require 'unobtrusive_date_picker'

# Include all the necessary functions in to the appropriate point in the Rails framework
ActionView::Base.send :include, UnobtrusiveDatePicker::UnobtrusiveDatePickerHelper
ActionView::Helpers::DateHelper.send :include, UnobtrusiveDatePicker::UnobtrusiveDatePickerHelper
ActionView::Base.send :include, UnobtrusiveDatePicker::AssetTagHelper
ActionView::Helpers::AssetTagHelper.send :include, UnobtrusiveDatePicker::AssetTagHelper
