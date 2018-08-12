# Block Attack - Rise of the Blocks homepage

Note that this is split into two repositories:
 * https://github.com/blockattack/blockattack-www contains the source
 * https://github.com/blockattack/blockattack.github.io contains the result


The reason this is split is because we use custom jekyll plugins that GitHub does not allow. So we generate everything offline and upload it.

Thumbnails are created with:
```
convert -thumbnail 280 FILENAME.png FILENAME.thumb.png
```

# Building

```
bundle exec jekyll build
```
Can be served with
```
bundle exec jekyll serve
```

# Requirements

Properly out of date since using "bundle"
```
sudo apt-get install ruby-dev
#Some more things to install...
sudo gem install jekyll jekyll-redirect-from jekyll-sitemap
```
