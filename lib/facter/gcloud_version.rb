Facter.add(:gcloud_version) do
    confine :kernel => :'linux'
    setcode do
        Facter::Core::Execution.execute('/bin/gcloud version --format=json')
    end
end
