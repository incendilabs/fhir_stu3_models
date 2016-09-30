require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
require_relative '../lib/fhir_models'

require 'fileutils'
require 'pry'
require 'nokogiri/diff'
require 'minitest/autorun'
require 'bundler/setup'
require 'test/unit'
require 'turn'
