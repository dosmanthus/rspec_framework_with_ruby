# Shared examples

可將不同 example 都會重複用到的 example 取出成爲 shared examples:

```
shared_examples_for('a sortable') do
  it 'has a position attribute' do
    expect(subject).to respond_to(:position)
  end

  it 'sorts position lowest first by default'
  it 'assigns position to new items'
end

describe Product do
  it_behaves_like 'a sortable'
end

describe Sponsor do
  it_behaves_like 'a sortable'
end
```

shared examples 也很適合用在測試 RESTful API

```
describe ProductController do

  describe '#index' do
    it_behaves_like 'a standard index action'
  end

  describe '#new' do
    it_behaves_like 'a standard new action'
  end

  describe '#create' do
    it_behaves_like 'a standard create action'
  end

end
```

it_behaves_like 也可以使用 code block, 例如：

```
shared_examples_for('a sortable') do
  it 'sorts position lowest first by default' do
    positions = collection.map(&:position)
    expect(positions).to eq(positions.sort)
  end
end

describe Product do
  it_behaves_like 'a sortable' do
    let(:collection) { Product.limit(5) }
  end
end

describe Sponsor do
  it_behaves_like 'a sortable' do
    let(:collection) { Sponsor.limit(5) }
  end
end
```

上述的 let 也可以利用'described_class' method, 直接定義在 shared examples 裡面:

```
shared_examples_for('a sortable') do
  let(:collection) { described_class.limit(5) }

  it 'sorts position lowest first by default' do
    positions = collection.map(&:position)
    expect(positions).to eq(positions.sort)
  end
end

```
