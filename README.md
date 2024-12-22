# Why use ER model? 
- very easy to understand even for naive users. 
- makes it easy to convert into relations. 

# Symbols used : 
- Rectangles: represent Entities 
- Ellipses: represent Attributes
- Diamond: represent Relationships among Entities.
- Lines: represent attributes to entities 
- Double Ellipse: represent Multi-Valued Attributes.
- Double Rectangle: represents a Weak Entity.

# Types of Entity: 
1. Strong Entity : does not depend on other Entity, represented by a rectangle. 
2. Weak Entity: Dependent will be a Weak Entity Type , represented by a double diamond.

# Types of Attributes: 
1. Key Attribute :  which uniquely identifies each entity .
 2. Composite Attribute: composed of many other attributes . 
3. Multivalued Attribute:  consists of more than one value. 
4. Derived. Attribute : can be derived from other attributes .

# Cardinality : 
1. One-to-One:  entity set can take part only once. 
2. One-to-Many : each entity can be related to more than one entity. 
 3. Many-to-One: one entity set can take part only once in the relationship set and entities in other entity sets can take part more than once 
4. Many-to-Many: When entitiesq can take part more than once

# Participation Constraint: 
1. Total Participation – Each entity in must participate in the relationship.
2. Partial Participation – The entity may or may NOT participate in the relationship.

# Aggregation : 
is an abstraction through which we can represent relationships as higher-level entity sets. 
# Specialization : 
It is a top-down approach where the higher-level entity is specialized into two or more lower-level entities. 
# Generalization : 
It is a bottom-up approach in which two or more entities can be generalized to a higher-level entity if they have some attributes in common.
