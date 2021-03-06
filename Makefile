THEME=mark-reid
BRANCH=$(shell git rev-parse --abbrev-ref HEAD )

git:
	git push origin ${BRANCH}

st:
	git status

theme:
	rake theme:install name="${THEME}"
	rake theme:switch name="${THEME}"



#
#  these are typically just notes on what I need to do.  Make isn't really required
#
#


gh:
	git push github github:master -f

heroku:
	git push heroku heroku:master -f
	echo https://guarded-temple-9787.herokuapp.com/

blank:
	git push github blank:gh-pages -f

addremotes:
	git remote add github git@github.com:BlackMaria/SherSec.git
	git remote add heroku https://git.heroku.com/guarded-temple-9787.git

del:
	git push github gh-pages --delete -f
	git push github gh_pages --delete -f

build:
	jekyll build

serve:
	jekyll server   --watch


puma:
	bundle exec jekyll serve --watch
	bundle exec puma -t 8:32 -w 3 -p 4000


getbranch:
	git clone -b gh-pages git@github.com:BlackMaria/SherSec.git
	# or git clone -b my-branch https://git@github.com/username/myproject.git


#  this is a rake wrpper :)  make->rake
post:
	rake post title="Hello World"

install:
	bundle install --binstubs

#  When running jekyll locally this will point to github, just remove it, but dont commit it
local:
	perl -pi -e 's|http://SherSec.io||g' _config.yml
