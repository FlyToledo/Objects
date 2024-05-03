# Easy apex parameters validation

Salesforce parameters validation class 

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>


## Example

```java
public Account findById(Id accountId){
  Objects.requireNonNull(accountId);
  Objects.requireEqualsType(accountId, Account.getSObjectType());
  ...
}
``` 

```java
public void processAccounts(List<Account> accounts){
  Objects.requireNonEmptyCollection(accounts,'List Account cannot be empty');
  ...
}
``` 

Documentation <a href="https://flytoledo.github.io/Objects/Objects.html">here</a>

