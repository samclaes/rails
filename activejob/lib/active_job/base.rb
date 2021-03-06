require 'active_job/core'
require 'active_job/queue_adapter'
require 'active_job/queue_name'
require 'active_job/enqueuing'
require 'active_job/execution'
require 'active_job/callbacks'
require 'active_job/logging'

module ActiveJob
  class Base
    include Core
    include QueueAdapter
    include QueueName
    include Enqueuing
    include Execution
    include Callbacks
    include Logging

    ActiveSupport.run_load_hooks(:active_job, self)
  end
end
