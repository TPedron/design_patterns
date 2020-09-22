require_relative 'account_observable.rb'
require_relative 'email_observer.rb'
require_relative 'sms_observer.rb'

account = AccountObservable.new('Tom', 'tom@email.com', '1234567890')
email_observer = EmailObserver.new(account)
sms_observer = SmsObserver.new(account)

account.add_subscriber(email_observer)
account.add_subscriber(sms_observer)

account.update_account('Tomathy', 'tomathy@email.com', '2345678901')

# OUTPUT
# Sending email message to tomathy@email.com
# Sending SMS message to 2345678901
