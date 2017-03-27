# Message count constraints

```
it 'allows constraints on message count' do
  post = double('BlogPost')
  expect(post).to receive(:like).exactly(3).times
  post.like(user: 'Bob')
  post.like(user: 'Mary')
  post.like(user: 'Ted')
end
```

```
it 'allows constraints on message count' do
  cart = Cart.new
  cart.add_item(35)
  cart.add_item(124)

  epxect(cart).to receive(:restock_item).twice
  cart.empty
end
```

## other modifiers

```
once
twice
exactly(n).times

at_least(:once)
at_least(:twice)
at_least(n).times

at_most(:once)
at_most(:twice)
at_most(n).times
```
