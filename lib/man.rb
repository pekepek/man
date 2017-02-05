require "man/version"

def man(obj, method)
  return "#{obj} don't have #{method}" unless obj.methods.include?(method)

  klass, method_type = obj.class === Class ? [obj, 'c'] : [obj.class, 'i']
  method_name = method.to_s.each_char.map {|s| /\w/ === s ? s : "-#{s.ord.to_s(16)}" }.join('')

  `open "http://ruby-doc.org/core-#{RUBY_VERSION}/#{klass}.html#method-#{method_type}-#{method_name}"`
end
