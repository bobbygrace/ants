Ants
====

Ants is a template for static, single-page websites; sites with a heavy
client and no server component.

Disclaimer: This is mostly for personal use and demonstration. It won't be
updated regularly and isn't using the latest and greatest tools.


## The Tools

- [Node](https://nodejs.org/) (v10.15.0)
- [Gulp](http://gulpjs.com/)
- [st](https://github.com/isaacs/st)
- [CoffeeScript](http://coffeescript.org/)
- [Browserify](http://browserify.org/)
- [LESS](http://lesscss.org/)
  - [normalize.css](http://necolas.github.io/normalize.css/)
  - [autoprefixer](https://github.com/less/less-plugin-autoprefix)


## How to use…

- Install packages with `npm install`
- Watch source js, css, and html files with `npm run dev`
- Serve locally with `npm run serve`
- Build the JavaScript bundle with `npm run build` (for production)
- Visit [localhost:8080](http://localhost:8080) to view your site.

This is just a template, so don’t push to this repo. To get rid of the git
history, run `rm -rf ./.git`, then do `git init` to start anew. Be sure to
update package.json, `/src/templates/index.html`, and so forth, with your
app’s information.


## Serving

Everything in `/public` is static and ready to serve, so you don’t necessarily
need to serve via the included app.coffee in production. But if you do use
app.coffee, be sure to set the environment variable on your server with
`export NODE_ENV=production`. You can change the port in
`/config/production.json`.
