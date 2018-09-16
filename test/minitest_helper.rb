require 'simplecov'
SimpleCov.start

require_relative '../lib/invoice_repository'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_analyst'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_repository'
require './lib/merchant'
require './lib/item_repository'
require './lib/item'
require './lib/invoice'
require 'bigdecimal/util'
require 'bigdecimal'
require 'CSV'
require 'time'
require 'pry'
