# pandas notebooks in a virtual env

### setup

The idea is to create a common python virtual environment
in a directory called `.env`, and run `jupyter` notebooks
in various data subdirectores.
Using `jupyter` notebooks makes exploring datasets with `pandas` really nice.

To set up the environment:

```
python3 -m venv .env
source setup.sh
pip install --upgrade pip
pip install -r requirements.txt
```

Type `deactivate` to turn the virtual env off.

### running a jupyter notebook

Run `source setup.sh` from the top level directory,
and then `cd` into a working directory to start `jupyter`. The working directory is expected to have a `notebooks` sub-directory where the notebooks are managed. You can put the data files anywhere you want, but using a `data` sub-directory is a nice convention.

The `setup.sh` script creates an alias named `jupyter` that starts the notebook and switches to your browser.
