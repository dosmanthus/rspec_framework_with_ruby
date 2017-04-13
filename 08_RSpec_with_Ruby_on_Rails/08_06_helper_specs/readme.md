# Helper specs

```
module ApplicationHelper
  def inch_to_cm(inches)
    inches * 2.54
  end
end

describe ApplicationHelper do
  describe "#inch_to_cm" do
    it "coverts inches to centimeters" do
      expect( helper.inch_to_cm(2) ).to eq(5.08)
    end
  end
end
```

## Deal with instance variables

- @page = 5
- assign(:page, 5)

```
module ApplicationHelper
  def next_page
    (@page || 0) + 1
  end
end

describe ApplicationHelper do
  describe "#next_page" do
    it "returns @page plus 1" do
      assign(:page, 5)
      expect(helper.next_page).to eq(6)
  end
end
```

