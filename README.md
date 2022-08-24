# Robot Framework Sample

## Local Environment Setup

### Requirements

- [pyenv](https://github.com/pyenv/pyenv)
- [pipenv](https://pipenv.pypa.io/en/latest/)

### Setup

```bash
# enter into virtual env (initialized if not exist)
pipenv shell
# Installing all dependencies for a project (including dev)
pipenv install --dev
# Run Robot
robot --outputdir output test/01-minimum/hello.robot
robot --outputdir output test/02-keyword/sample.robot
robot --outputdir output test/03-custom-library/hello.robot
robot --outputdir output test/04-selenium/sample.robot
# exit virtual env
exit
```
