# Observation Matchers

```
expect{...}.to() # use expect{}, not expect()
```

## Observe Object Attributes

```
expect{ array << 1 }.to change(array, :empty?).from(true).to(false)
# call #empty? before and after the block
```

## Observe Values

```
expect{ x += 1 }.to change{x}.from(10).to(11)
expect{ x += 1 }.to change{x}.by(1)
expect{ x += 1 }.to change{x}.by_at_least(1)
expect{ x += 1 }.to change{x}.by_at_most (1)
```

## Observe Errors

```
expect{ customer.delete }.to raise_error
expect{ customer.delete }.to raise_exception

expect{ 1/0 }.to raise_error(ZeroDivisionError)
expect{ 1/0 }.to raise_error.with_message('divided by 0')
expect{ 1/0 }.to raise_error.with_message(/divided/)
```

## Observe Output

```
expect{ print 'hello' }.to output.to_stdout
expect{ print 'hello' }.to output('hello').to_stdout
expect{ print 'hello' }.to output(/ll/).to_stdout

expect{ warn 'problem' }.to output(/problem/).to_stderr
```
