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

- - -

Copyright &copy; 2017-2018 Toshi Holdings Pte. Ltd. &lt;[https://www.toshi.org/](https://www.toshi.org/)&gt;

"Toshi" is a registered trade mark. This License does not grant
permission to use the trade names, trademarks, service marks, or
product names of the Licensor.

This program is free software: you can redistribute it and/or modify
it under the terms of the version 3 of the GNU Affero General Public License
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see &lt;[https://www.gnu.org/licenses/](http://www.gnu.org/licenses/)&gt;.
