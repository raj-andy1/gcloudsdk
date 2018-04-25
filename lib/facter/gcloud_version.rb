Facter.add(:gcloud_version) do
    confine :kernel => 'linux'
    setcode do
        begin
            result = nil
            result = Facter::Core::Execution.execute('gcloud version --format=json')
        rescue
            nil
        end
    end
end