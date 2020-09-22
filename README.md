# design_patterns

Simple implementations of many common Design Patterns in Ruby without Rails or other gems.

# Creation Patterns

## Factory Pattern

### Description
Factory classes conforming to the same interface that build different but similar objects, factories can be swapped out in different contexts to build the correct object

### Example
The example implements a Fruit building application that selects the correct FruitBuilder factory.

## Abstract Pattern

### Description
Same as the “Factory Method Pattern" but each factory builds multiple object-types that are related

### Example
Copy/Paster the Factory Pattern and added an extra relevant object to be built by each FruitBuilder.  Not a great example but it helps differentiate between the 2.

## Singleton Pattern

### Description
Class with a private constructor and a public class method called instance that returns a single instance of the class that was generated from within.  Bad practice to use most of the time.

### Example
The Singleton is some sort of global state with a score attribute (maybe for a game or something)

# Structural Patterns

# Behavioral Patterns

## Strategy Pattern

### Description
Instead of classes inheriting behaviour from each other, move towards extracting behaviour into components that can reused across classes to prevent incorrect hierarchies

### Example
Ruby supports duck-typing so I figured I would implement a few Duck classes that inherit some behavior, override others and all behaviors are swappable components conforming to an interface.
