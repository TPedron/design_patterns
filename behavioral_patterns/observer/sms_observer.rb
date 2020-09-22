class SmsObserver
    def initialize(account)
        @account = account
    end

    def update
        puts "Sending SMS message to #{@account.phone_number}"
    end
end