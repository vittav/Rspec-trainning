Sandwich = Struct.new(:taste, :toppings)

# ---------------------------------------------------------
# Original and worst case
# RSpec.describe 'An ideal sandwich' do
#     before { @sandwich = Sandwich.new('delicious', []) }
#     it 'is delicious' do
#         sandwich = Sandwich.new('delicious', [])
#         taste = sandwich.taste

#         expect(taste).to eq('delicious')
#     end

#     it 'lets me add toppings' do
#         sandwich = Sandwich.new('delicious', [])
        
#         sandwich.toppings << 'cheese'
#         toppings = sandwich.toppings

#         expect(toppings).not_to be_empty
#     end
# end

# ---------------------------------------------------------
# Hooks in rspec
# Sandwich = Struct.new(:taste, :toppings)

# RSpec.describe 'An ideal sandwich' do
#     before { @sandwich = Sandwich.new('delicious', []) }
#     it 'is delicious' do
#         # sandwich = Sandwich.new('delicious', [])
#         taste = @sandwich.taste

#         expect(taste).to eq('delicious')
#     end

#     it 'lets me add toppings' do
#         # sandwich = Sandwich.new('delicious', [])
        
#         @sandwich.toppings << 'cheese'
#         toppings = @sandwich.toppings

#         expect(toppings).not_to be_empty
#     end
# end



# ---------------------------------------------------------
# Helper Methods
# def sandwich
        # Essa memoization significa que o codigo vai usar @sandwich se esta variavel ja possuir valor
        # ou Sandwich.new(...) se @sandwich nao possuir nenhum valor
#     @sandwich ||= Sandwich.new('delicious', [])
# end


# RSpec.describe 'An ideal sandwich' do
#     before { @sandwich = Sandwich.new('delicious', []) }
#     it 'is delicious' do
#         # sandwich = Sandwich.new('delicious', [])
#         taste = sandwich.taste

#         expect(taste).to eq('delicious')
#     end

#     it 'lets me add toppings' do
#         # sandwich = Sandwich.new('delicious', [])
        
#         sandwich.toppings << 'cheese'
#         toppings = sandwich.toppings

#         expect(toppings).not_to be_empty
#     end
# end


# ---------------------------------------------------------
# Let
RSpec.describe 'An ideal sandwich' do
    # Sempre que algum codigo usar sandwich o programa ira utilizar como valor o resultado do bloco abaixo.
    let(:sandwich) { Sandwich.new('delicious', [])}

    before { @sandwich = Sandwich.new('delicious', []) }
    it 'is delicious' do
        # sandwich = Sandwich.new('delicious', [])
        taste = sandwich.taste

        expect(taste).to eq('delicious')
    end

    it 'lets me add toppings' do
        # sandwich = Sandwich.new('delicious', [])
        
        sandwich.toppings << 'cheese'
        toppings = sandwich.toppings

        expect(toppings).not_to be_empty
    end
end