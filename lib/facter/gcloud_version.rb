#custom fact to add gcloud version upton install
Facter.add(:gcloud_version) do
    confine :kernel => :'linux'
    setcode do
        Facter::Core::Execution.execute('/bin/gcloud version --format='json' | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["Google Cloud SDK"]'')
    end
end