# Design Patterns in Ruby

Simple implementations of many common Design Patterns in Ruby without Rails or other gems. Each pattern example has its own folder with an `application.rb` file that can be run via `ruby <relative path>` running a demo.

# 1. Creation Patterns

## 1.1 Factory Pattern

### Description
Factory classes conforming to the same interface that build different but similar objects, factories can be swapped out in different contexts to build the correct object

### Example
The example implements a Fruit building application that selects the correct FruitBuilder factory.

## 1.2 Abstract Factory Pattern

### Description
Same as the “Factory Method Pattern" but each factory builds multiple object-types that are related.

### Example
Copy/Paste of the Factory Pattern example and added an extra relevant object to be built by each FruitBuilder.  The FruitCreator business logic builds a dessert type based on 2 models built by each sub-factory class.

## 1.3 Singleton Pattern

### Description
Class with a private constructor and a public class method called instance that returns a single instance of the class that was generated from within.  Bad practice to use most of the time.

### Example
The Singleton is some sort of global state with a score attribute (maybe for a game or something)

## 1.4 Prototype Pattern

### Description
Objects implement a cloneable interface that exposes a make_copy method on an object.  The purpose of this is to ensure that classes take responsibility for cloning logic including any private fields or internal things that would make this difficult from outside the class. When classes all follow this cloneable interface is makes the client not need to worry about class type returned since it will be of a type implementing this interface.

### Example
We make a couple Animal classes (not subclasses of an Animal type) but both implementing the Cloneable interface with a make_copy method exposed.  Dog has a simple copy and Fish has more custom logic involved. 

# 2. Structural Patterns

## 2.1 Decorator Pattern

### Description
A way to change behavior of an object at runtime by wrapping it in a decorator object which is is a subclass that has an instance of the class.  Nested wrapping allows for simple delegation of methods.

### Example
We have 2 types of beverages: Tea and Coffee.  You can easily add ingredients that have different costs by wrapping it in AddOnDecorators such as Milk, Sugar and FlavorShot.

## 2.2 Adapter Pattern

### Description
Makes 2 incompatable interfaces compatable by passing along requests. It does not have intelligent logic that converts data in preparation for making an adapted request.

### Example
A bit more of a skeleton example where we have an adapter that maps calls to its `request` method to it's target adaptee's `specific_request` method.

## 2.3 Facade Pattern

### Description
Facade classes provide a unified interface to a set of interfaces to simplify usage of the set of interaces.  Basically a helper class.

### Example
Turning a car facade on causes several actions to occur inside the car that are taken care of by the facade such as lights, engine, radio and navigation components.  For the client, its as simple as turning the key!

## 2.4 Proxy Pattern

### Description
Proxies wrap a resource with the intent of controller access to it. There are different ways of doing this (remote/virtual/protection styles) but they act as the object they wrap to allow for clients to interact with it without knowing its a proxy while the proxy also provides additional behavior around access.

### Example
We have a Book class that when instantiated loads the entire contents of a book as a massive string. However, this book object for whatever reason in the codebase is often instantiated without needing the contents immediately, causing unnecessary IO and memory usage as well expensive parsing of the book string. So, we build a BookProxy class with the same interface as the Book that will instantiate the Book and delegate calls to it only when we actually need it loaded.

## 2.5 Bridge Pattern

### Description
Decouple an abstraction from its implementation so the 2 can vary independently. We have an Abstraction interface and an Implementor interface, both with several concretions. The concrete abstractions contain a concrete Implementation that can be used in tandem.

### Example
We have 2 classes that implement a View interface, one for a long form post and 1 for a short form post.  They have a show method that prints out something view-like (didn't want to implement an HTML generator for this.) Each is constructed with a media resource that implements the same interface allowing each view to retrieve data needed to build the view via a provided object that has the required data (Artist/Book).

## 2.6 Composite Pattern

### Description
We define a component interface with an execution method, and Leaf (single item) and Composite (container of multiple items that can be composite or leafs) classes that implement that interface. Then we build a tree using these classes.  Composites delegate to its children on execution method call while leafs implement logic in their execute method. Works really well for tree-structures.

### Example
Implement a hierarchical todos list which can have projects containing multiple sub-todos. This tree implementation is immutable and generates nested list html of the project/todo structure. I could have implemented a more complex dynamic tree with add and remove methods but chose not to. Sample output of the html is provided.

## 2.7 Flyweight

### Description
The purpose of this pattern is to allow for programs to build vast quantities of objects while reducing memory usage by sharing parts of object state between multiple objects.

### Example
We build out a car database containing flyweights. Unique instances of cars have several shared fields that are unique between them such as make, model and color.  What is unique about a car instance is its plates and owner. So we essentially build a cache of non-unique car combinations and use them when appropriate for vehicles being added to the database.

# 3. Behavioral Patterns

## 3.1 Strategy Pattern

### Description
Composition over inheritance! Instead of classes inheriting behaviours/algorithms from each other in a bad hierarchy, move towards extracting behaviour into components that can reused and interchanged across classes.

### Example
Ruby supports duck-typing so I figured I would implement a few Duck classes that inherit/override behaviors like Quack, Fly and Swim. All behaviors are swappable components conforming to an interface. Note that none of the algorithms do anything more than print something out.

## 3.2 Observer Pattern

### Description
Obvervable subject classes publish notifications on state change to 1+ Observer classes that are subscribed to the subject. Observer classes are instantiated with the subject so there is a link to the class to access the new state when notified.

### Example
Account class allows services to subscribe for updates to the account (in this case, SMS and Email services subscribe and perform their own business logic)

## 3.3 Command Pattern

### Description
Define explicit objects with execute and undo methods that act upon a receiving object passed on construction.  Build an invoker that has instance methods of these command object and calls them.  It can store history of commands executed allowing for simple rollback of several commands.

### Example
We have a SmartLightInvoker representing a remote control for a smart light system (SmartLightReceiver) with on and off buttons.  We pass in command objects (TurnOn/OffCommands) and assign them to each button and then click the buttons.  Each command executed is saved to a commands history array that when iterated over in reverse, we can call each's undo command in the correct order to fully undo all commands called.

## 3.4 Template Method Pattern

### Description
A skeleton of an algorithm (whos structure should not change) is defined with invariant portions implemented in a template method that defers variant portions to subclasses to implement. The skeleton should not be instantiated on its own and instead we should only instantiate the concrete subclasses that complete the template. The template method should not be overwritten in the concrete class. It differs from the strategy pattern in that it relies on inheritance instead of composition.

### Example
Built an abstract Worker template class that prints out a routine for the worker.  We have concrete FireFighter and Programmer workers implementing the variants of the Worker template.  The implementation "algorithms" are just printing out strings but it gets the point across.

## 3.5 Iterator Pattern

### Description
A collection-wrapping class that enables iteration (loop through) and enumeration (apply operation to each) over the internal collection without the client needing to consider for the structure or types of the internal collection. The collection class returns an iterator conforming to the interator interface that can be used to iterate over the collection data.

### Example
We have a house that implements floors, rooms and windows.  Houses are floor collections that return floor iterators, floors are room collections returning room iterators and rooms are window collections that return window iterators. The Houses/Floors/Rooms/Windows hierarchy represents a tree-like structure that we want to flatten and iterate over using these iterators. We can also apply an open_all or close_all method which will apply open or close operations to all windows.

## 3.6 State Pattern

### Description
A context class delegates to its current state.  All state classes implement the same interface called by the context so that the context behaves differently based on the state of the context. The next state for the context is determined by the state implementation that has a reference back to the context.

### Example
We implement a simple gate system that requires successful payment to allow someone to enter through the gate. The GateContext delegates its methods to its current GateState (Open/Closed).

## 3.7 Null Object Pattern

### Description
Replace passing null around and instead pass polymorphic null-versions of classes. This allows us to stop doing null-checks in our code and instead just implemenent behaviors for the null-versions of classes.

### Example
We implement a simple Animal class with several subclasses including Cat, Dog and NullAnimal to handle the scenario of a null animal with a NullAnimal class.

## 3.8 Chain of Responsibility Pattern

### Description
This pattern sends data to an object and if that object can't use it then it sends it to 1+ other objects that may be able to use it.

### Example
We build out 4 simply math calculators (+, -, *, /) that acceptsa request with 2 numbers and task string.  The Calculators (handlers) check if it is right for them, else pass it to the next calculator type.

## 3.9 Mediator Pattern

### Description
This pattern helps you reduce chaotic/messy dependencies between colleague objects by forcing communications to go through an object who's responsibility is to enable simpler communication. This allows the objects to not need to know as much/anything about each other since the mediator encapsulates those interactions for them, enabling loose coupling. The colleague objects that want to communicate with eachother and the mediator share the same interface so delegation is enabled in the mediator.

### Example
We build a simple stock exchange mediator that handles buy and sell offers of stocks between several Colleague buyer classes (Tom/Bob who act the same for simplicity but could act very differently while adhering to the colleague interface).  Method calls to the colleagues are delegated to the mediator who handles the transactions.

## 3.10 Memento Pattern

### Description
Allows for storing previous states of an object easily by creating history objects called mementos, storing them in an ordered list that can be iterated on to retrieve history as it changed.

### Example
We keep track of the updates to a string called article by having a memento object that holds a version of the string, an originator that creates and memento history objects and a caretaker that organizes them in order and allows for retrieval.

## 3.11 Visitor Pattern

### Description
This pattern allows several classes to implement the Visitor interface (a method called accept that takes in a Visitor object). A visitor object enables you to implement a method for that class without it being stored on the class. This allows you to define external classes that can extend the functionality of other classes without editing them.

### Example
We implement a tax calculator visitor that will tax basic and alcoholic products with different tax percentages.  We can then pass that visitor to the basic and alcohol product's accept method and run the tax logic implemented on the visitor on that product's price field based on the class type.
