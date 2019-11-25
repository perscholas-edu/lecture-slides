# Generics

-
-
## What we'll cover
<p class="fragment fade-up">What is a Generic Class?</p>
<p class="fragment fade-up">Defining a Generic Class</p>
<p class="fragment fade-up">What you can't do with Generics</p>


-
-
# Background
* Introduced in SE5 to make it safer and easier than casting from Objects everywhere.
* You've used them already:
  * Lists
  * Maps

-
### Generic examples we've seen before

- `ArrayList<String> myList;` is a generic type
- `ArrayList myList;` is called a raw type
  - Equivalent to `ArrayList<Object> myList;`
  - `<Type>` is called a type parameter
  - Generics without type parameters lose some of their benefits

-
-
# Simple generic class example

-

## Container without Generics
```Java
class Container {
  private Object element;

  public Object get(){return element;}

  public void put(Object item){ element = item; }
}
```

-
## Now, when you need to use it, you get into situations like
```Java
Container container = new Container();
String hello = "Hello, World!"
// String s = c.get(); // This doesn't work
String s = (String)c.get(); //Must be cast
```

-
## Defining a generic class
```Java
class Container<T> {
  private T element;

  public T get(){return element;}

  public void put(T item){ element = item; }
}
```

-
### Now, no cast needed!
### You can even use two types.
```Java
class Pair<T,U> {
  private T first;
  private U second;
  ...
}
```
-
-
### Type inference with the `<>` operator

Added in Java 7; makes your code more readable
```Java
Container<String> stringContainer = new Container<String>();
Container<String> stringContainer = new Container<>();
```
```Java
Map<String, List<Integer>> dbTableIndex = new HashMap<String, ArrayList<Integer>>();
Map<String, List<Integer>> dbTableIndex = new HashMap<>();
```

-
-
### We can do methods, too.
```Java
class MiddleHelper {
  public static <T> T getMiddle(T... a) { return a[a.length /2 ]; }
}
```
Note, if you don't specify the type when you call the method, you can get into scenarios where the compiler doesn't understand what you're trying to do.
```Java
double middle = MiddleHelper.getMiddle(3.14, 1729, 0);
```

-
-
# What CAN'T we do with Generics

-
####  No primitive types

Use wrapper classes. E.g.:

```Java
// Instead of: ArrayList<char> charList;
ArrayList<Character> charList;
// Instead of: Map<int, double> testResults;
Map<Integer, Double> testResults;
```

-
#### No runtime type inquiry on inner types
  * no `instanceof Pair<String>` nor `instanceof Pair<T>`
  * `Pair<String>` and `Pair<Integer>` are of equal classes as far as runtime checking is concerned.

-
#### No Arrays of parameterized types

  * Remember, the compiler will make these into Objects (or bounding type).  You pretty much always don't want this.
  * You can get around this with some wildcard magic.  But, like, don't.
  * You can, however, use `@SafeVarargs` for varargs.

-
#### No instantiating type variables

  * `new T()` doesn't work
  * Pass in a `Class<T>` and call `class.newInstance()`
  * Use a function with a constructor expression
  * Either way, if you're going to be instantiating a type variable, you're going to be using functions that take arguments instead of directly.

-
#### No generic arrays

  * Type erasure here will hurt you.  Casting from Objects or bounding types to the type you want probably isn't gonna work in your favor.
  * Again, here's where you have a function that will take an array constructor expression, kind of like instantiating type variables.
  * Or, call `Array.newInstance`

-
#### No using them as statics members in generic classes.

```Java
public class <T> Thing{
  // Badbadbad
  public static T badGenericVariable; //ERROR ERROR ERROR!!!
  //Seriously, this won't compile.
  public static void main(String[] args){
    Thing<String> thingOne = new Thing<>();
    Thing<Integer> thingTwo = new Thing<>();
    //Which of these would be allowed?
    badGenericVariable = new Integer(42);
    badGenericVariable = "Won't compile!";
  }
}


```

-
#### No throwing or catching them.
  * You can use them in exception specs, though.
  * Using generics wrong in the context of Exceptions can even break checked exception checking.
