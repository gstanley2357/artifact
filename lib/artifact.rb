class Artifact
    attr_accessor :code

    def initialize(code = "")
        @code = code
    end

    def exec
        eval(@code)
    end
end
