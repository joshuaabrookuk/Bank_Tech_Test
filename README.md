# Bank Tech test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

```

## Plan:

Link to very rough scribbles

* Set-up a Github repo
* Set-u repo and + README.md locally
* Initialize rspec, rubocop and simplecov in Gemfile, as well as .gitingnore
* Commit project environment.
* Test rspec & gems have been set-up correctly with 'Hello World' test.
* Get coding, using the RED, GREEN, REFACTOR TTD commit method.

## Breaking down the criteria

*Extracting information from the user scenario*.

Given a **client** makes a **deposit** of **1000** on **10-01-2012**  <br>
---------*user*----------*method*---*integer*---*Time class* <br>
And a **deposit** of **2000** on **13-01-2012**  <br>
-------*method*--*integer* --*Time class* <br>
And a **withdrawal** of **500** on **14-01-2012** <br>
-------*method*-----*integer* --*Time class* <br>
When **she** **prints** her **bank statement**, Then she would see: <br>
------*user*-*method*-------*object* <br>

*line 1///* **date || credit || debit || balance** *<--- Header* <br>
*line 2///* **14/01/2012 || || 500.00 || 2500.00** *<--- Transaction 3* <br>
*line 3///* **13/01/2012 || 2000.00 || || 3000.00** *<--- Transaction 2* <br>
*line 4///* **10/01/2012 || 1000.00 || || 1000.0** *<--- Transaction 1* <br>
- *transactions in descending order* <br>
- *data separated using* '||' *dividers* <br>
- 'Time' of transaction, formatted with .strftime
- 'Credit' the amount added to balance, formatted with decimals
- 'Debit' the amount subtracted from balance, formatted with decimals
- 'Balance' The total amount in the account, formatted with decimals

### Use

Clone this repo and navigate to it in your terminal

run `bundle` to install all gems

run `rspec` to run tests

run `open coverage/index.html` to run simplecov and see test coverage

don't run `rubocop` to check code syntax

run `irb -r ./lib/transaction.rb`
- create a new instance of transaction
`transaction = Transaction.new`
- make a deposit using the `deposit` method
`transaction.deposit(1000)`
- make a withdrawal using the `withdrawal` method
`transaction.withdrawal(500)`
- print your transaction history using the `print_out` method
`transaction.print_out`
(It should look **beatuful!**)

```
date || credit || debit || balance
16/07/2020 || || 500.00 || 500.00
16/07/2020 || 1000.00 || || 1000.00
```

### Reflection

*Things I need to do to improve this project* <br>
*Vague, unspecific, unactionable ideas include:* <br>

- Split classes <br>
- Split Methods <br>
- Rename variables and arguments <br>
- Write better tests <br>
- Test edge cases <br>
