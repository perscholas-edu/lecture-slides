# React Project Structure



-
-
### Project Directory
* `package.json`
    * file which records project dependencies and configures project
* `package-lock.json`
    * file which records the version of packages we install
* `./public`
    * folder which stores all static files, like images
* `./node_modules`
    * folder which stores all project dependencies
* `./src`
    * folder which stores all source code    


-
-
### Web Components
* A web component is a function or class that produces html to show the user (using jsx) and handles feedback from user (using event handlers)


-
#### Web Component Package Structure
* `./src/components/`
    * The purpose of this directory is to containerize all _components_ to be created
        * A component is typically a single _web-element_, with its own _style_, and potentially _javascript_.
* `./src/components/`
    * The purpose of this directory is to containerize the `component1` webelement implementation.
* `./src/components/component1`
    * The purpose of this directory is to containerize the `component1` webelement implementation.
* `./src/components/component2`
    * The purpose of this directory is to containerize the `component2` webelement implementation.



-
### Web Component Structure
* `./src/components/component1`
    * The purpose of this directory is to containerize the `component1` webelement implementation.
* `./src/components/component1/component1.js`
    * The purpose of this file is to containerize the _view_ of the `component1` webelement
* `./src/components/component1/component1.css`
    * The purpose of this file is to containerize the _style_ of the _view_ of the `component1` webelement
