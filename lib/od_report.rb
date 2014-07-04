require File.expand_path('../od_report/version',    __FILE__)

# Common
require File.expand_path('../parser/default',    __FILE__)
require File.expand_path('../parser/file',       __FILE__)

# ODF
require File.expand_path('../odf-report/images',  __FILE__)
require File.expand_path('../odf-report/field',   __FILE__)
require File.expand_path('../odf-report/text',    __FILE__)
require File.expand_path('../odf-report/fields',  __FILE__)
require File.expand_path('../odf-report/nested',  __FILE__)
require File.expand_path('../odf-report/section', __FILE__)
require File.expand_path('../odf-report/table',   __FILE__)
require File.expand_path('../odf-report/report',  __FILE__)

# ODS
require File.expand_path('../ods-report/field',  __FILE__)
require File.expand_path('../ods-report/fields', __FILE__)
require File.expand_path('../ods-report/nested', __FILE__)
require File.expand_path('../ods-report/table',  __FILE__)
require File.expand_path('../ods-report/report', __FILE__)

module OdReport
  include Parser
  class Report
    def initialize(template_name, &block)
      if File.extname(template_name) == '.odt'
        ODT::Report.new(template_name, block)
      elsif File.extname(template_name) == '.ods'
        ODS::Report.new(template_name, block)
      else
        raise "Invalid template name"
      end
    end
  end
end
