bundle exec jekyll build
rsync -avPr -e ssh _site/ sago007@web.sf.net:/home/project-web/b/bl/blockattack/htdocs/
cd ../blockattack.github.io/
git pull
rsync -r ../blockattack/_site/ ./
git add .
git commit -m "Updated using deploy script"

