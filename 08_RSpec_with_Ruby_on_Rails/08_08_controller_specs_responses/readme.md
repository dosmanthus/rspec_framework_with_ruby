# Controller specs: Responses

## Controller Spec Response Matchers

- expect(response).to render_template(template)
- expect(response).to redirect_to(path)
- expect(response).to have_http_status(status)

## Status Codes

- 200, :ok
- 403, :forbidden
- 404, :not_found
- 301, :moved_permanently
- 302, :found
- 500, :internal_server_error
- 502, :bad_gateway

```
describe CustomersController do
  describe 'GET index' do
    before(:example) { get :index }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
    it 'render index template' do
      expect(response).to render_template('index')
    end
  end
end
```

## templates are stubbed by default

```
describe CustomersController do
  describe 'GET index' do
    it "render 'index' template with stubbed body" do
      get :index
      expect(response).to render_template('customers/index')
      expect(response.body).to eq('')
    end
  end
end
```

use `render_views` to render views

```
describe CustomersController do
  describe 'GET index' do
    render_views

    it "render 'index' template with template in body" do
      get :index
      expect(response).to render_template('customers/index')
      expect(response.body).to match(/Customer List/)
    end
  end
end
```

## Rendering views

- Slows down examples
- Renders views for all examples in that group
- Better alternatives for inspecting the response: View specs


