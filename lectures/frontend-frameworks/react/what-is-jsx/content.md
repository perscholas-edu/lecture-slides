# What is JSX








-
-
## Lecture Overview
* What is JSX?
* Converting Inline Styling
* Class vs Class Name












-
-
### What is JSX
* JSX is a - of javascript which renders HTML


-
### Converting HTML Inline Styling to JSX
* Consider the following block of HTML
```html
<div>
    <label class="label" for="name">
        Enter name:
    </label>
    <input id="name" type="text">
    <button style="background-color: blue; color: white;">
        Submit
    </button>
</div>
```

-
#### Converting HTML Inline Styling to JSX
* Consider the folllowing block of JSX
```javascript
render() {
    return (
        <div>
            <label className="label" for="name">
                Enter name:
            </label>
            <input id="name" type="text">
            <button style={{backgroundColor: 'blue'; color: 'white'}}>
                Submit
            </button>
        </div>
    )
}
```


-
#### Injecting JavaScript function into JSX

```javascript
getButtonText() {
    return "Submit";
}

render() {
    return (
        <div>
            <label className="label" for="name">
                Enter name:
            </label>
            <input id="name" type="text">
            <button style={{backgroundColor: 'blue'; color: 'white'}}>
                {getButtonText()}
            </button>
        </div>
    )
}
```


-
#### Sub-topic 1C
* Discussion point 1C.1
* Discussion point 1C.2
* Discussion point 1C.3











-
-
### Topic 2
* Sub-topic 2A
* Sub-topic 2B
* Sub-topic 2C

-
#### Sub-topic 2A
* Discussion point 2A.1
* Discussion point 2A.2
* Discussion point 2A.3


-
#### Sub-topic 2B
* Discussion point 2B.1
* Discussion point 2B.2
* Discussion point 2B.3


-
#### Sub-topic 2C
* Discussion point 2C.1
* Discussion point 2C.2
* Discussion point 2C.3













-
-
### Topic 3
* Sub-topic 3A
* Sub-topic 3B
* Sub-topic 3C



-
#### Sub-topic 3A
* Discussion point 3A.1
* Discussion point 3A.2
* Discussion point 3A.3


-
#### Sub-topic 3B
* Discussion point 3B.1
* Discussion point 3B.2
* Discussion point 3B.3


-
#### Sub-topic 3C
* Discussion point 3C.1
* Discussion point 3C.2
* Discussion point 3C.3













-
-
## Lecture Summary
* Topic 1 Summary
* Topic 2 Summary
* Topic 3 Summary
