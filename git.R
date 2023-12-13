git config --global user.name "Jinny Yang"
git config --global user.email "jinjinnyyang@gmail.com"
git config --global core.editor "nano -w" 
git config --global init.defaultBranch main
git config --global credential.helper store
git config --list

git remote add origin https://github.com/jinnyyang/un-report.git
git branch -M main
git push -u origin main
