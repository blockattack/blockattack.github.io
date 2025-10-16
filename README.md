# Block Attack - Rise of the Blocks homepage

Page: https://blockattack.net

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

```
sudo apt  install ruby-bundler
bundle install
```
