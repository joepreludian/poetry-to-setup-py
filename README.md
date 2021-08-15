# poetry-to-setup-py
A Docker image responsible for converting pyproject.toml to setup.py;

The main idea of this project is to make your poetry based project being available as a `editable` dependency of another project.

Actually if you try to checkout your poetry based library and try to install another project via `pip -e ../your_project` you won't be able to get it working.

In order to overcome this issue, this docker command will run into your poetry based repository and generate a `setup.py`, so you can use in another repo as an editable dependency. Also don't forget to add the generated `setup.py` in your project `.gitignore`.


# How to use it

In your poetry project that you want to use as a editable dependency, please do:

    $ cd <your_poetry_project>
    $ docker run --rm -v $(pwd):/work -u $(id -u):$(id -g) joepreludian/poetry-to-setup-py

