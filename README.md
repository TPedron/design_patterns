# design_patterns

Simple implementations of many common Design Patterns in Ruby without Rails or other gems.

# 1. Creation Patterns

## 1.1 Factory Pattern

### Description
Factory classes conforming to the same interface that build different but similar objects, factories can be swapped out in different contexts to build the correct object

### Example
The example implements a Fruit building application that selects the correct FruitBuilder factory.

## 1.2 Abstract Factory Pattern

### Description
Same as the “Factory Method Pattern" but each factory builds multiple object-types that are related

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

# 3. Behavioral Patterns

## 3.1 Strategy Pattern

### Description
Composition over inheritance! Instead of classes inheriting behaviours from each other in a bad hierarchy, move towards extracting behaviour into components that can reused across classes.

### Example
Ruby supports duck-typing so I figured I would implement a few Duck classes that inherit/override behaviors like Quack, Fly and Swim. All behaviors are swappable components conforming to an interface.

## 3.2 Observer Pattern

### Description
Obvervable subject classes publish notifications on state change to 1+ Observer classes that are subscribed to the subject. Observer classes are instantiated with the subject so there is a link to the class to access the new state when notified.

### Example
Account class allows services to subscribe for updates to the account (in this case, SMS and Email services subscribe and perform their own business logic)

## 3.3 Command Pattern

### Description
Define explicit objects with execute and undo methods that act upon a receiving object passed on construction.  Build an invoker that has instance methods of these command object and calls them.  It can store history of commands executed allowing for simple rollback of several commands.

### Example
We have a SmartLightInvoker representing a remote control for a smart light system (SmartLightReceiver) with on and off buttons.  We pass in command objects (TurnOn.OffCommands) and assign them to each button and then click the buttons.  Each command executed is saved to a commands history array that when iterated over in reverse, we can call each's undo command in the correct order to fully undo all commands called.
