require_relative "basic_product.rb"
require_relative "alcohol_product.rb"

class TaxVisitor

    def visit(product)
        if product.is_a? BasicProduct
            tax_basic_product(product)
        elsif product.is_a? AlcoholProduct
            tax_basic_product(product)
        else
            puts "not implemented for this class"
            nil
        end
    end

    private

    def tax_basic_product(product)
        return product.price.to_f * 1.13 # 13% tax on regular items
    end

    def tax_alcohol_product(product)
        return product.price.to_f * 1.25 # 25% tax on alcohol items
    end
end