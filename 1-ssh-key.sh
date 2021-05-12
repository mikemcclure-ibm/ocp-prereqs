echo "Warning this will overwrite your root ssk-key"
echo "Waiting 10 Seconds hit ctrl+c to cancel"
sleep 10
echo "Creating ssh key"
ssh-keygen -t ed25519 -N '' -f ~/.ssh/id_rsa
sleep 1
echo "Starting ssh agent"
eval "$(ssh-agent -s)"
echo "Addind ssh Private Key"
ssh-add ~/.ssh/id_rsa
echo "ssh-key complete"
