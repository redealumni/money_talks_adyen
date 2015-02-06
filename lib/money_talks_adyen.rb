# encoding: utf-8
money_talks_adyen_path = File.dirname(__FILE__)
$LOAD_PATH.unshift(money_talks_adyen_path) unless $LOAD_PATH.include?(money_talks_adyen_path)

require 'savon'
require 'active_support/core_ext'

module MoneyTalks
  module PSP
    module Adyen
      autoload :Adapter, 'money_talks_adyen/adapter.rb'
      autoload :Payment, 'money_talks_adyen/payment.rb'
      autoload :Error,   'money_talks_adyen/error.rb'
    end
  end
end
