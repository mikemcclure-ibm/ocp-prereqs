echo "This script updates the git repository for the ocp prereqs"
sleep 5
echo "cd into the cloned repository /root/get-prereqs"
sleep 5
git remote add origin https://github.com/mikemcclure-ibm/ocp-prereqs.git
git branch -M main
git push -u origin main
