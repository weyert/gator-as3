module Gator
  module AS3
    module ASUnit4

      class ClassTestGenerator < Gator::AS3::TestGenerator
        include Gator::Project

        define :command => "klass",
               :usage => "generate as3 test klass CLASS_NAME", :description => "Creates ASUnit4 class test."

        def template_file
          "as3/test/asunit4/klass.as.tt"
        end

        def generate
          @class_name = "#{@class_name}Test"
          super
        end

        no_tasks {

          def instance_name
            @class_name.chomp("Test")
          end

        }

      end

    end
  end
end