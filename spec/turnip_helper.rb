require 'rails_helper'
require 'turnip/capybara'

def steps_module(file_path)
 modules_to_include = clean_step_modules(file_path)
 modules_to_include.map { |sub_module| sub_module.camelize }.join('::').constantize
end

def clean_step_modules(module_path)
 module_path.split('support/').last.gsub('.rb', '').split('/')
end

RSpec.configure do |config|
 Dir[Rails.root.join('spec/support/steps/**/*')].each do |f|
   config.include steps_module(f)
 end
end
