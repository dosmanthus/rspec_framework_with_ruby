# Controller specs: Requests

## About Controller

- Controllers are ruby classes
- Rails create controller instances for us
- Depends on request/response
- Render, redirect
- Set values in cookies and sessions

## Controller Spec HTTP Requests

- get(action, options)
- post(action, options)
- patch(action, options)
- put(action, options)
- delete(action, options)

```
get(:index)
get('customers/index')
get(:index, page: 2, search: 'smith')

post(:create, customer: {
  first_name: 'Peyton',
  last_name: 'Chiang',
  country: 'TW'
})
```

## Controller spec attributes

- controller
- request
- response

- session
- flash
- cookies
- assigns

```
describe CustomersController do
  let(:customers) { Customer.all }

  describe 'GET index' do
    it "assigns all customers to @customers" do
      get :index
      expect(assigns['customers']).to eq(customers)
    end
  end
end
```

## 注意事項

- assigns['customers']
- assigns[:customers] # Does not work
- assigns('customers')
- assigns(:customers)

```
cookies['logged_in']

# better to use
request.cookies['logged_in']
response.cookies['logged_in']
```
