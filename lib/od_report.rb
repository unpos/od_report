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
end
