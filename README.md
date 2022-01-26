# highjump-test

***highjump-test***  is a repository for HighJump testing functionalities with the RobotFramework.


## Installation
If you already have Python with pip installed, you can simply run:
```
pip install -r requirements.txt
```

Check all installed Python packages with `pip list`  or `pip freeze` commands.

The pip list command returns the list of packages in the current environment.
```
pip list
```

The pip freeze command returns as `<package-name> == <version>`.
```
pip freeze
```

## Development
#### Execute by tag
    robot -v ENV:{{env}} -d {{result directory}} -i {{tag_name}} testcases
#### Execute by test name
    robot -v ENV:{{env}} -d {{result directory}} -t "{{test name}}" testcases
#### Execute by test suite
    robot -v ENV:{{env}} -d {{result directory}} testcases/{{test suite name}}.robot
#### Execute all project
    robot -v ENV:{{env}} -d {{result directory}} testcases




