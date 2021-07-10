json.system_requirements do
  json.array! @system_requirements, :id, :name, :memory, :operational_system, :processor, :storage, :video_board
end
