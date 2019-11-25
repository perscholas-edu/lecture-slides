# Test Driven Development
## Testing State Versus Testing Identity










-
-
### Defining the class to be Tested
* Consider a `Person` POJO whose definition is as follows:

```java
public class Person {
    private String fName, lName, email;

    public Person(String fName, String lName, String email) {
        this.fName = fName;
        this.lName = lName;
        this.email = email;
    }
    // getters and setters omitted for brevity
}
```




-
### Comparing Instances with Identical State
* Consider our intent is return `true` if two objects have identical _state_.
    * _State_ is determined by the aggregation of field-values.
* The test below expresses our _intent_. However, its assertion can never be true.


```java
public class PersonTest {
    @Test
    public void testState() {
        // Given
        String firstName = "Leon";
        String lastName = "Hunter";
        String email = "leon@perscholas";
        
        // when
        Person person1 = new Person(firstName, lastName, email);
        Person person2 = new Person(firstName, lastName, email);
        
        //then
        Assert.assertEquals(person1, person2);
    }
}
```





-
### Understanding `Assert.assertEquals`
* `Assert.assertEquals` takes an argument of two `Object`, say `obj1`, and `obj2`.
* `Assert.assertEquals` output is determined by the invokation of the `obj1.equals(obj2)`
* By default `.equals` returns `true` if the object passed into the parameter is the same object that is invoking the method.
* To change this behavior, we can override the `.equals` to implement a custom comparison.




-
### Undserstanding `.equals` to Compare by Object-State
* The `.equals` definition below expresses our _intent_. However, it has faulty implementation.
```java
public class Person {
    private String fName, lName, email;
    // constructor omitted for brevity

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;

        Person person = (Person) obj;
        return  fName.equals(person.fName) &&
                lName.equals(person.lName) &&
                email.equals(person.email);
    }
    // getters and setters omitted for brevity
}
```








-
### Understanding `.equals` to Compare by Object-State
* Consider that the implicit parameter (invoker of `.equals`) has a `null` field.
    * The test will throw a `NullPointerException` upon invokation of `.equals`.

```java
public class PersonTest {
    @Test
    public void testState() {
        // Given
        String firstName = null;
        String lastName = "Hunter";
        String email = "leon@perscholas";
        
        // when
        Person person1 = new Person(firstName, lastName, email);
        Person person2 = new Person(firstName, lastName, email);
        
        //then
        Assert.assertEquals(person1, person2); // NullPointerException
    }
}
```
    







-
-
### Undserstanding `Objects.equals` to Compare by Object-State
* The` Objects.equals` method ensures operands are not `null` before comparison, avoiding potential `NullPointerException`s.
```java
public class Person {
    private String fName, lName, email;
    // constructor omitted for brevity

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;

        Person person = (Person) obj;
        return Objects.equals(fName, person.fName) &&
                Objects.equals(lName, person.lName) &&
                Objects.equals(email, person.email);
    }
    // getters and setters omitted for brevity
}
```







-
### Understanding `Assert.assertArrayEquals`
* Because it is impossible to override the `.equals` method in an array, a custom `assertArrayEquals` method has been defined by the junit framework.
* This method sorts each array to be compared, then compares each element in the array.
    * If any of the comparisons in the array evaluate to `false`, then the test asserts a failure.