class EmailObserver
    
    def initialize(account)
        @account = account
    end

    def update
        puts "Sending email message to #{@account.email}"
    end
end