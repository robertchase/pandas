# pandas notebooks in a virtual env

### setup

The idea is to create a common python virtual environment, and run `jupyter` notebooks
in various data subdirectores.
Using `jupyter` notebooks makes exploring datasets with `pandas` really nice.

To set up the environment (just once):

```
python3 -m venv .venv
.venv/bin/pip install --upgrade pip
.venv/bin/pip install -r requirements.txt
```

### running a jupyter notebook

Run `source .venv/bin/activate` from the top level directory,
and then `cd` into a working directory to start `jupyter`. The working directory is expected to have a `notebooks` sub-directory where the notebooks are managed. You can put the data files anywhere you want, but using a `data` sub-directory is a nice convention.

Run `python -m jupyter lab --notebook-dir=notebooks` to start a notebook.

Run `deactivate` to "turn off" the virtual environment.