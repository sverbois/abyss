# Site Abyss UWE Benelux

Plone 6.1 Classic Product for https://abyss-uwe-benelux.com/ web site.

## Production installation

    git clone https://github.com/sverbois/abyss.git
    cd abyss
    python3.12 -m venv .
    ./bin/pip install -r https://dist.plone.org/release/6.1.5/requirements.txt
    ./bin/buildout

## Development installation

    git clone https://github.com/sverbois/abyss.git
    cd abyss
    make install
    make start
    open http://localhost:8080

## Reminder

- Banner images of size 1920x800