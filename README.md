# MoneyTalks Adyen Adapter

An adapter to be used with MoneyTalks

## Installation

Add this line to your application's Gemfile:

    gem 'money_talks_adyen'

Or install it yourself as:

    $ gem install money_talks_adyen

And finally execute:

    $ bundle install

## Adyen

Please note, for all modification requests Adyen will respond with a message appropriate to the modification type such
as captureReceived, cancelReceived or refundReceived. This message is an acknowledgment of your modification
request, it does not signify that the payment was actually modified. Once your request has been processed you will
receive a notification informing you whether or not the modification was
successful. note, for all modification requests Adyen will respond with a
message appropriate to the modification type such
as captureReceived, cancelReceived or refundReceived. This message is an acknowledgment of your modification
request, it does not signify that the payment was actually modified. Once your request has been processed you will
receive a notification informing you whether or not the modification was successful.

```ruby

MoneyTalks.configure :adyen do |config|
  config.user = "my_user"
  config.pass = "my_password"
  # Brazilian users might want to use this option (as of 31/03/2014 boleto payment method wasn't supported on the live url)
  config.use_local_wsdl = true
end

```

## Support for Brazil

Adyen's current published live url doest not support installments! You can use the option
config.use_local_wsdl to use the correct WSDL

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
