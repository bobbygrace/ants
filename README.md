Ants
====

Ants is a template for static, single-page websites; sites with a heavy
client and no server component.


## The Tools

- [Gulp](http://gulpjs.com/)
- [st](https://github.com/isaacs/st)
- [CoffeScript](http://coffeescript.org/)
- [Browserify](http://browserify.org/)
- [LESS](http://lesscss.org/)
  - [normalize.css](http://necolas.github.io/normalize.css/)
  - [autoprefixer](https://github.com/less/less-plugin-autoprefix)


## How to use…

- `npm install`
- Build and watch styles and templates with `npm run gulp`
- Watch JavaScript bundle with `npm run watch`
- Build JavaScript bundle with `npm run build` (for production)
- Serve locally with `npm run dev`
- Visit [localhost:8080](http://localhost:8080) to view your site.

This is just a template, so don’t push to this repo. To get rid of the git
history, run `rm ./.git`, then do `git init` to start anew. Be sure to update
package.json, `/src/templates/index.html`, and so forth, with your app’s
information.


## Serving

Everything in `/public` is static and servable, so you don’t necessarily
need to serve via the included app.coffee in production. But if you do use
app.coffee, be sure to set the environment variable on your server with
`export NODE_ENV=production`. You can change the port in
`/config/production.json`.


## Why

I don’t expect this to be anything new for a full-time front-end developer; it
uses a lot of common tools. It just saves me a lot of time and keystrokes when
starting a new project of this kind. I also hopes it’s instructive for newer
front-end developers.

You should also check out [yeoman](http://yeoman.io/) and
[brunch](http://brunch.io/).
