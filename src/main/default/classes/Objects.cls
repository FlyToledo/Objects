
public inherited sharing class Objects {

 /**
 * Checks if the provided object is null and throws an IllegalArgumentException if it is.
 *
 * @param obj the object to check for nullity
 * @exception IllegalArgumentException if the provided object is null
 */
  public static void requireNonNull(Object obj) {
    requireNonNull(obj, null);
  }

 /**
 * Checks if the provided object is null and throws an IllegalArgumentException if it is.
 *
 * @param obj the object to check for nullity
 * @param message the message to use for the exception if the object is null. If this is null, a default message is used.
 * @exception IllegalArgumentException if the provided object is null
 */
  public static void requireNonNull(Object obj, String message) {
    if (obj == null) {
      throw new IllegalArgumentException(
        message ?? 'The argument cannot be null'
      );
    }
  }

  /**
 * Checks if the provided entry object is null or not equal to the comparable object and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the object to check for nullity and equality
 * @param comparable the object to compare with the entry object
 * @exception IllegalArgumentException if the provided entry object is null or not equal to the comparable object
 */
  public static void requireEquals(Object entry, Object comparable) {
    requireEquals(entry, comparable, null);
  }


 /**
 * Checks if the provided entry object is null or not equal to the comparable object and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the object to check for nullity and equality
 * @param comparable the object to compare with the entry object
 * @param message the message to use for the exception if the entry object is null or not equal to the comparable object. If this is null, a default message is used.
 * @exception IllegalArgumentException if the provided entry object is null or not equal to the comparable object
 */
  public static void requireEquals(
    Object entry,
    Object comparable,
    String message
  ) {
    if (entry == null || !entry.equals(comparable)) {
      throw new IllegalArgumentException(
        message ?? 'The both argument should be equals'
      );
    }
  }

  /**
 * Checks if the provided entry object is null or not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the SObject to check for nullity and equality
 * @param comparable the SObjectType to compare with the entry object
 * @exception IllegalArgumentException if the provided entry object is null or not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    SObject entry,
    Schema.SObjectType comparable
  ) {
    requireEqualsType(
      entry,
      comparable,
      String.format(
        'The argument should be {0}',
        new List<String>{ String.valueOf(comparable) }
      )
    );
  }

 /**
 * Checks if the provided entry object is null or not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the SObject to check for nullity and equality
 * @param comparable the SObjectType to compare with the entry object
 * @param message the message to use for the exception if the entry object is null or not equal to the comparable SObjectType. If this is null, a default message is used.
 * @exception IllegalArgumentException if the provided entry object is null or not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    SObject entry,
    Schema.SObjectType comparable,
    String message
  ) {
    requireEquals(entry, comparable, message);
  }

 /**
 * Checks if the provided entry ID is null or not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 * If no custom message is provided, a default message is used.
 *
 * @param entry the ID to check for nullity and equality
 * @param comparable the SObjectType to compare with the entry ID
 * @exception IllegalArgumentException if the provided entry ID is null or not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    Id entry,
    Schema.SObjectType comparable
  ) {
    requireEqualsType(
      entry,
      comparable,
      String.format(
        'The argument should be {0}',
        new List<String>{ String.valueOf(comparable) }
      )
    );
  }

 /**
 * Checks if the provided entry ID's SObjectType is null or not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the ID whose SObjectType is to be checked for nullity and equality
 * @param comparable the SObjectType to compare with the SObjectType of the entry ID
 * @param message the message to use for the exception if the SObjectType of the entry ID is null or not equal to the comparable SObjectType
 * @exception IllegalArgumentException if the SObjectType of the provided entry ID is null or not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    Id entry,
    Schema.SObjectType comparable,
    String message
  ) {
    requireEquals(entry?.getSObjectType(), comparable, message);
  }

 /**
 * Checks if the provided list of SObjects is null or if their SObjectType is not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 * If no custom message is provided, a default message is used.
 *
 * @param entry the list of SObjects to check for nullity and equality of SObjectType
 * @param comparable the SObjectType to compare with the SObjectType of the entry SObjects
 * @exception IllegalArgumentException if the provided list of SObjects is null or if their SObjectType is not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    List<SObject> entry,
    Schema.SObjectType comparable
  ) {
    requireEqualsType(
      entry,
      comparable,
      String.format(
        'The argument should be {0}',
        new List<String>{ String.valueOf(comparable) }
      )
    );
  }

 /**
 * Checks if the provided list of SObjects is null or if their SObjectType is not equal to the comparable SObjectType and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the list of SObjects to check for nullity and equality of SObjectType
 * @param comparable the SObjectType to compare with the SObjectType of the entry SObjects
 * @param message the message to use for the exception if the list of SObjects is null or if their SObjectType is not equal to the comparable SObjectType
 * @exception IllegalArgumentException if the provided list of SObjects is null or if their SObjectType is not equal to the comparable SObjectType
 */
  public static void requireEqualsType(
    List<SObject> entry,
    Schema.SObjectType comparable,
    String message
  ) {
    requireEquals(entry?.getSObjectType(), comparable, message);
  }

 /**
 * Checks if the provided collection is null or empty and throws an IllegalArgumentException if it is.
 * If no custom message is provided, a default message is used.
 *
 * @param entry the collection to check for nullity or emptiness
 * @exception IllegalArgumentException if the provided collection is null or empty
 */
  public static void requireNonEmptyCollection(List<Object> entry) {
    requireNonEmptyCollection(entry, null);
  }

 /**
 * Checks if the provided collection is null or empty and throws an IllegalArgumentException if it is.
 *
 * @param entry the collection to check for nullity or emptiness
 * @param message the message to use for the exception if the collection is null or empty
 * @exception IllegalArgumentException if the provided collection is null or empty
 */
  public static void requireNonEmptyCollection(
    List<Object> entry,
    String message
  ) {
    if (entry == null || entry.isEmpty()) {
      throw new IllegalArgumentException(
        message ?? 'The argument cannot be empty'
      );
    }
  }

 /**
 * Checks if the provided object is null or not an instance of the specified type and throws an IllegalArgumentException if either condition is true.
 * If no custom message is provided, a default message is used.
 *
 * @param entry the object to check for nullity and type
 * @param type the type to check the object against
 * @exception IllegalArgumentException if the provided object is null or not an instance of the specified type
 */
  public static void requireInstanceOf(Object entry, System.Type type) {
    requireInstanceOf(entry, type, null);
  }


 /**
 * Checks if the provided object is null or not an instance of the specified type and throws an IllegalArgumentException if either condition is true.
 *
 * @param entry the object to check for nullity and type
 * @param type the type to check the object against
 * @param message the message to use for the exception if the object is null or not an instance of the specified type
 * @exception IllegalArgumentException if the provided object is null or not an instance of the specified type
 */
  public static void requireInstanceOf(
    Object entry,
    System.Type type,
    String message
  ) {
    if (entry == null || !(entry instanceof type)) {
      throw new IllegalArgumentException(
        message ??
          String.format(
            'The argument should be a instance of {0}',
            new List<String>{ String.valueOf(type) }
          )
      );
    }
  }
}
