json.array!(@tasks) do |task|
  json.extract! task, :id, :what
  json.url task_url(task, format: :json)
end
