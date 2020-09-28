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

