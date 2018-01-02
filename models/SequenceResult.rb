class SequenceResult
  include DataMapper::Resource
  property :id, String, key: true
  property :name, String
  property :result, String #pass fail
  property :passed_count, Integer, default: 0
  property :failed_count, Integer, default: 0
  property :wait_index, Integer, default: 0
  property :warning_count, Integer
  property :created_at, DateTime, default: proc { DateTime.now }

  has n, :test_results
  belongs_to :testing_instance
end
