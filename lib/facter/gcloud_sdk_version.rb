Facter.add(:gcloud_sdk_version) do
    require 'json'
    confine :kernel => :'linux'
    setcode do
        result = JSON.parse(Facter::Core::Execution.execute('gcloud version --format=json'))
        result['Google Cloud SDK']
    end
end