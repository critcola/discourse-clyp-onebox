<a href="https://critcola.com/?utm_source=github.com&utm_medium=readme&utm_term=logo&utm_content=discourse-clyp-onebox&utm_campaign=development">![Logo](https://critcola.com/assets/images/crit-cola-banner.svg)</a>

# Discourse Clyp Onebox

This plugin for Discourse extends Onebox to add support for embedding audio player widgets from [Clyp](https://clyp.it/) in Discourse posts.

## Demo

See it in action and test it out for yourself on [Crit Cola's Discourse](https://critcola.com/?utm_source=github.com&utm_medium=readme&utm_term=demo&utm_content=discourse-clyp-onebox&utm_campaign=development).

## Installation

Add the plugin's repository URL to your container's `app.yml` file, for example:

```yml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/critcola/discourse-clyp-onebox.git
```

Rebuild the container:

```
cd /var/discourse
./launcher rebuild app
```

For the plugin to apply retroactively, you'll need to rebake old posts:

```
cd /var/discourse
./launcher enter app
rake posts:rebake
```

## About Crit Cola

Crit Cola is an [Overwatch clan](https://critcola.com/?utm_source=github.com&utm_medium=readme&utm_term=overwatch-clan&utm_content=discourse-clyp-onebox&utm_campaign=development), a growing community of PC gamers. Join our [Steam group](http://steamcommunity.com/groups/critcola) and follow us on [Twitter](https://twitter.com/CritColaGaming). Cheers!

## License

The Discourse Clyp Onebox plugin is released under the [MIT License](LICENSE).
