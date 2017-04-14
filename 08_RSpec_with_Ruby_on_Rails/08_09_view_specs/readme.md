# View specs

- Less important
- Isolated form controller and request-response
- One spec file per template
  spec/views/customers/index.html.erb_spec.rb
- Rspec infers controller and action based on describe string

```
describe 'customers/index' do
end
```

## steps

- Make instance variable assignments
- Render the template
- Set expectations on what is returned

## helpers

- view object
- assign
- render
- rendered

```
describe 'customers/index' do
  it 'displays all assigned customers' do
    assign(:customers, [
      Customer.new(name: 'Peyton'),
      Customer.new(name: 'Alice'),
      Customer.new(name: 'Toby')
    ])

    render
    # render(template: 'customers/index.html.erb')

    expect(rendered).to match(/Peyton/)
    expect(rendered).to match(/Alice/)
    expect(rendered).to match(/Toby/)
  end
end
```

```
describe 'customers/index' do
  it 'displays all assigned customers' do
    assign(:customers, [
      Customer.new(name: 'Peyton'),
      Customer.new(name: 'Alice'),
      Customer.new(name: 'Toby')
    ])

    render

    expect(view).to render_template(partial: '_customer', count: 3)
    expect(view).to render_template(partial: '_pagination', locals: {page: 1})
  end
end
```

## 注意事項

- Does not render layout unless specified
- Must specify both template and layout
- render(template: 'customers/index',
        layout: 'layouts/application'
        )

## Stub template

- Can stub the rendering of partials
- stub_template(template_file_name: new_template)

```
describe 'customers/index' do
  it 'displays all assigned customers' do
    assign(:customers, [Customer.new(name: 'Peyton')])

    stub_template('customers/_customer.html.erb': "<%= customer.name.reverse %><br/>")

    render

    expect(rendered).to match(/notyeP/)
  end
end
```
