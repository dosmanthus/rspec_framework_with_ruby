describe 'Expectation Matchers' do
  describe 'predicate matchers' do
    it 'will match be_* to custom methods ending in ?' do
      # with built-in methods
      expect([]).to be_empty # [].empty?
      expect(1).to be_integer # 1.integer?
      expect(1).to be_nonzero # 1.nonzero?
      expect(0).to be_zero # 0.zero?
      expect(1).to be_odd # 1.odd?
      expect(2).to be_even # 2.even?

      # with custom methods
      class Product
        def visible?; true; end
      end

      product = Product.new

      expect(product).to be_visible
      expect(product.visible?).to be(true)
    end
    it 'will match have_* to custom methods like has_*?' do
      # with built-in methods
        hash = { :a => 1, :b => 2}
        expect(hash).to have_key(:a)
        expect(hash).to have_value(2)

      # with custom methods
        class Customer
          def has_pending_order?; true; end
        end

        customer = Customer.new
        expect(customer).to have_pending_order
    end
  end
end
