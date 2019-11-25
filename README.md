# PerScholas Lecture Slides

## Description
* The purpose of this repository is to create a centralized location for PerScholas slides.

## Developmental Notes
* Please ensure that lecture slides are written in a manner that allows any technically competent person to give the presentation.
* Slides should not include personalized notes
* Slides should not enforce a particular presentation-style


## Viewing the application
* The application can be ran by executing the following command from the root directory of the project.
    * Python 2
        * `python -m SimpleHTTPServer 8080`
    * Python 3
        * `python -m http.server 8080`
* After running the application, navigate to `localhost:8080` from a browser to view the slides.
* The application can be killed by executing the following command:

```
kill -kill `lsof -t -i tcp:8080`
```
