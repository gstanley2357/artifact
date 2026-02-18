class Artifact
    attr_accessor :code

    def initialize(code = "")
        @code = code
    end

    def exec
        eval(@code)
    end
end

def default(input)
  case input
  when String, Numeric
    { result: input }
  when Hash
    if input.key?(:data) || input.key?('data')
      data_value = input[:data] || input['data']
      { result: data_value }
    else
      { result: input }
    end
  else
    { result: input }
  end
end