Rails.application.reloader.to_prepare do
    remote_toggle_client = Toggle::Split.new
    ::RemoteToggle = Toggle::Wrapper.new(remote_toggle_client)
end