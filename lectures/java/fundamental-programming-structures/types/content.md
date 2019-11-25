# Types









-
-
## What we'll cover
<p class="fragment fade-up">Data types</p>
<p class="fragment fade-up">Casts</p>
<p class="fragment fade-up">Wrapper-Types</p>
<p class="fragment fade-up">The `null` object</p>














-
-
### Data Types
* What is a Data Type?
* Primitive Data Types
* Non-primitive Data Types 




-
#### What is a Data Type?
* In Java, every variable has a type.
* Variables are declared by first stating the _type_ of the variable, followed by the _name_ of the variable.
* Each _declaration_ is considered a _statement_
* Each _statement_ is followed by a semi-colon, `;`

```java
double salary;
int vacationDays;
long earthPopulation;
boolean done;
int x;
```




-
#### Primitive Data Types
* A _primitive_ data type is ...
* There are 8 primitive data-types
    1. `double` stores fractional _number_ values.
    2. `float` stores fractional _number_ values.
    3. `long` stores non-fractional _number_ values.
    4. `int` stores non-fractional _number_ values.
    6. `short` stores non-fractional _number_ values.
    7. `byte` stores non-fractional _number_ values.
    8. `boolean` stores _logical_ values (`true`, or `false`)


-
#### Numeric Primitives
* `short`, `int`, `long`, `float` and `double`.
* These primitive data types hold only numeric data.
* Operations associated with such data types are those of simple arithmetic (addition, subtraction, etc.) or of comparisons (is greater than, is equal to, etc.)





-
#### Textual primitives:
* `byte` and `char`.
* These primitive data types hold characters (that can be Unicode alphabets or even numbers).
* Operations associated with such types are those of textual manipulation
    * (comparing two words, joining characters to make words, etc).
* However, byte and char can also support arithmetic operations.













-
-
### Conversions between Numeric Types
* Widening Primitive Conversions
* Narrowing Primitive Conversions
* Casting






-
### What is Widening Primitive Conversions?
* conversions of primitive types which do not lose information are named _widening primitive conversions_.
* A widening primitive conversion does not lose information about the overall magnitude of a numeric value.

```java
int n = 123456789;
float f = n; // f is 1.23456792E8
```



-
#### Specific Widening Primitive Conversions
* 19 specific conversions on primitive types:
    - `byte` to `short`, `int`, `long`, `float`, or `double`
    - `short` to `int`, `long`, `float`, or `double`
    - `char` to `int`, `long`, `float`, or `double`
    - `int` to `long`, `float`, or `double`
    - `long` to `float` or `double`
    - `float` to `double`



-
### What is Narrowing Primitive Conversions?
* conversions of primitive types which lose information are named _narrowing primitive conversions_.
* A widening primitive conversion may lose information about the overall magnitude of a numeric value.
* Narrowing primitive conversions are done by means of _casting_.


```java
double d = 9.997;
int n = (int) d; // n is 9
```

-
### Casting
* When two values are combined with a binary operator (such as `n` + `f` where n is an integer and `f` is a floating-point value), both operands are converted to a common type before the operation is carried out.
    - If either of the operands is of type double, the other one will be converted to a double.
    - Otherwise, if either of the operands is of type float, the other one will be converted to a float.
    - Otherwise, if either of the operands is of type long, the other one will be converted to a long.
    - Otherwise, both operands will be converted to an int.



-
## Wrapper-Types
* Each _primitive type_ has a respective _non-primitive_, _wrapper-type_, that is considered generally safer than its primitive counterpart.
* _Wrapper-types_ also have additional operations that can be performed on them.

-
## Wrapper-Type List
* A list of the respective wrapper-types:
<table>
    <th>Primitive Type</th>
    <th>Wrapper-Type</th>
    <tr>
        <td>
        double
        </td>
        <td>
        Double
        </td>
    </tr>
    <tr>
        <td>
        float
        </td>
        <td>
        Float
        </td>
    </tr>
    <tr>
        <td>
        long
        </td>
        <td>
        Long
        </td>
    </tr>
    <tr>
        <td>
        int
        </td>
        <td>
        Integer
        </td>
    </tr>
    <tr>
        <td>
        short
        </td>
        <td>
        Short
        </td>
    </tr>
    <tr>
        <td>
        char
        </td>
        <td>
        Character
        </td>
    </tr>
    <tr>
        <td>
        byte
        </td>
        <td>
        Byte
        </td>
    </tr>
    <tr>
        <td>
        boolean
        </td>
        <td>
        Boolean
        </td>
    </tr>
</table>



-
-
## `null` object
* The `null` object denotes that an object does not _currently_ exist, but has the _potential_ to exist in the future.
* All non-primitive values can be assigned to `null`.








