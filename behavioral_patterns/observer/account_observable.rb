class AccountObservable
    attr_reader :name, :email, :phone_number
    def initialize(name, email, phone_number)
        @name = name
        @email = email
        @phone_number = phone_number

        @observers = []
    end

    def add_subscriber(observer)
        @observers << observer
    end

    #def remove_subscriber # TODO

    def update_account(name, email, phone_number)
        @name = name
        @email = email
        @phone_number = phone_number

        notify
    end

    def notify
        @observers.each do |observer|
            observer.update
        end
    end

    
end