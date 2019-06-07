
RSpec.describe F1SalesCustom::Email::Source do

  describe '.support?(email_id)' do
    context 'when it support email_id' do

      let(:email_id){ 'website-form' }

      before { allow(described_class).to receive(:all).and_return([ { email_id: 'website-form', name: 'Vendas - SP' } ]) }

      it 'returns true' do
        expect(described_class.support?(email_id)).to be_truthy
      end
    end

    context 'when it do not support email_id' do

      let(:email_id){ 'website-form-fobares' }

      it 'returns false' do
        expect(described_class.support?(email_id)).to be_falsy
      end
    end
  end
end

