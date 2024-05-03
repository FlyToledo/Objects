@isTest(IsParallel=true)
private class ObjectsTest {
  @isTest
  static void requireNonNullTest() {
    Account acc = new Account();
    try {
      Objects.requireNonNull(acc);
    } catch (Exception e) {
      Assert.isNotNull(e);
    }
  }

  @isTest
  static void requireNonNullErrorTest() {
    Account acc = null;
    try {
      Objects.requireNonNull(acc);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains('The argument cannot be null'));
    }
  }

  @isTest
  static void requireNonNullErrorCustomMessageTest() {
    Account acc = null;
    String customMessage = 'Account cannot be null';
    try {
      Objects.requireNonNull(acc, customMessage);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains(customMessage));
    }
  }

  @isTest
  static void requireEqualsTest() {
    Id accId1 = TestUtil.getFakeId(Account.getSObjectType());
    Id accId2 = accId1;
    try {
      Objects.requireEquals(accId1, accId2);
    } catch (Exception e) {
      Assert.isNotNull(e);
    }
  }

  @isTest
  static void requireEqualsErrorTest() {
    Id accId1 = TestUtil.getFakeId(Account.getSObjectType());
    Id accId2 = TestUtil.getFakeId(Account.getSObjectType());
    try {
      Objects.requireEquals(accId1, accId2);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(
        e.getMessage().contains('The both argument should be equals')
      );
    }
  }

  @isTest
  static void requireEqualsErrorCustomMessageTest() {
    Id accId1 = TestUtil.getFakeId(Account.getSObjectType());
    Id accId2 = TestUtil.getFakeId(Account.getSObjectType());
    String customMessage = 'both ids should be equals';
    try {
      Objects.requireEquals(accId1, accId2, customMessage);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains(customMessage));
    }
  }

  @isTest
  static void requireEqualsTypeIdErrorTest() {
    Id accId1 = TestUtil.getFakeId(Account.getSObjectType());
    try {
      Objects.requireEqualsType(accId1, Contact.getSObjectType());
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains('The argument should be Contact'));
    }
  }

  @isTest
  static void requireEqualsTypeSobjectErrorTest() {
    Account acc = new Account();
    try {
      Objects.requireEqualsType(acc, Contact.getSObjectType());
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains('The argument should be Contact'));
    }
  }

  @isTest
  static void requireEqualsTypeSobjectListErrorTest() {
    List<Account> accs = new List<Account>{ new Account(), new Account() };
    try {
      Objects.requireEqualsType(accs, Contact.getSObjectType());
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains('The argument should be Contact'));
    }
  }

  @isTest
  static void requireNonEmptyCollectionErrorTest() {
    List<Account> accs = new List<Account>();
    try {
      Objects.requireNonEmptyCollection(accs);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains('The argument cannot be empty'));
    }
  }

  @isTest
  static void requireNonEmptyCollectionErrorrCustomMessageTest() {
    List<Account> accs = new List<Account>();
    String customMessage = 'List Account cannot be empty';
    try {
      Objects.requireNonEmptyCollection(accs, customMessage);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains(customMessage));
    }
  }

  @isTest
  static void requireInstanceOfErrorrCustomMessageTest() {
    List<Account> accs = new List<Account>();
    String customMessage = 'The argument should be a instance of Account';
    try {
      Objects.requireInstanceOf(new Account(), Contact.class, customMessage);
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, IllegalArgumentException.class);
      Assert.isTrue(e.getMessage().contains(customMessage));
    }
  }
}
