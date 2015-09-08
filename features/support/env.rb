require 'rspec'
require 'page-object'
require 'data_magic'

World(PageObject::PageFactory)
DataMagic.yml_directory = 'config/data'
