require_relative 'method_logger'
require_relative 'foobar'

f = FooBar.new
f.foo
f.bar( 24, 42 )
f.baz( 1, 2, "hi", { one: 1 } )

MethodLogger.log_method( FooBar, 'foo' )
MethodLogger.log_method( FooBar, 'bar' )
MethodLogger.log_method( FooBar, 'baz' )

f.foo
f.bar( 24, 42 )
f.baz( 1, 2, "hi", { one: 1 } )
