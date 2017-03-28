describe 'Doubles' do
  context 'with spying abilities' do
    it 'can expect a call after it is received' do
      siri = spy('Siri')
      allow(siri).to receive(:hey!).and_return("How can I help you?")
      siri.hey!
      expect(siri).to have_received(:hey!)
    end
    it 'can use message constraints' do
      siri = spy('Siri')
      allow(siri).to receive(:hey!).and_return("How can I help you?")
      siri.hey!
      siri.hey!
      siri.hey!
      expect(siri).to have_received(:hey!).with(no_args).exactly(3).times
    end
    it 'can expect any message already sent to a declared spy' do
      customer = spy('Customer')
      customer.send_invoice
      expect(customer).to have_received(:send_invoice)
    end
    it 'can expect only allowed messages on partial doubles' do
      class Customer
        def send_invoice
          true
        end
      end

      customer = Customer.new
      # must stub :send_invoice to start spying
      allow(customer).to receive(:send_invoice)
      customer.send_invoice
      expect(customer).to have_received(:send_invoice )
    end

    context "using let and a before hook" do
      let(:order) do
        spy('Order', process_line_items: nil,
          charge_credit_card: true,
          send_email: true
        )
      end

      before(:example) do
        order.process_line_items
        order.charge_credit_card
        order.send_email
      end

      it 'calls #process_line_items on the order' do
        expect(order).to have_received(:process_line_items)
      end

      it 'calls #charge_credit_card on the order' do
        expect(order).to have_received(:charge_credit_card)
      end

      it 'calls #send_email' do
        expect(order).to have_received(:send_email)
      end
    end
  end
end
