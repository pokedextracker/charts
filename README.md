# Charts

Repo for [Helm](https://helm.sh/) Charts for
[pokedextracker.com](https://pokedextracker.com).

## Available Charts

- `web-app` - A Chart for a basic web app.

## Adding the Repo

```sh
$ helm repo add pokedextracker https://pokedextracker.github.io/charts
```

## Updating a Chart

After a change has been merged into the `master` branch, you can run this `make`
command to cut a new version and push it up. Make sure you specify the updated
chart and the new version that it should be.

```sh
make release chart=web-app version=1.0.0
```

To see how the release would be created without committing it and pushing it up,
you can run it with `DRY_RUN=true` to do everything except the `git` commands.

```sh
DRY_RUN=true make release chart=web-app version=1.0.0
```
