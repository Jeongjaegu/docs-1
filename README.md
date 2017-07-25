# Toshi Documentation

A collection of Toshi documentation. Managed by Circle CI, published via Github Pages.


## Configuring Api Blueprint on Circle CI

Where `docs/api.apib` is the path to your Api Blueprint and `master` is the branch to build from:

circle.yml:
```yaml
machine:
  node:
    version: 6.7.0
dependencies:
  post:
    - npm install -g aglio
deployment:
  development:
    branch: master
    commands:
      - git clone --depth 1 git@github.com:tokenbrowser/docs.git $HOME/docs
      - $HOME/docs/deploy-blueprint.sh $CIRCLE_PROJECT_REPONAME docs/api.apib $CIRCLE_SHA1
```

Your documentation will be available at www.toshi.org/docs/your-repo-name/
