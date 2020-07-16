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
* Initialize rspec, rubocop and simplecov in Gemfile, aswell as .gitingnore
* Commit project enviroment.
* Test rpsec & gems have been set-up correctly with 'Hello World' test.
* Get coding, using the RED, GREEN, REFACTOR TTD commit method.

## Breking down the criteria

*Extracting infomation from the user scenario*.

Given a **client** makes a **deposit** of **1000** on **10-01-2012**
          *user*              *method*    *interger*    *Time class*
And a **deposit** of **2000** on **13-01-2012**  
       *method*    *interger*    *Time class*
And a **withdrawal** of **500** on **14-01-2012**
         *method*    *interger*    *Time class*
When **she** **prints** her **bank statement**, Then she would see:
     *user*   *method*          *object*   

*line 1///* date || credit || debit || balance *<--- Header*
*line 2///* 14/01/2012 || || 500.00 || 2500.00 *<--- Transaction 3*
*line 3///* 13/01/2012 || 2000.00 || || 3000.00 *<--- Transaction 2*
*line 4///* 10/01/2012 || 1000.00 || || 1000.00 *<--- Transaction 1*
- *transactions in decending order*
- *data seperated using* '||' *dividors*

- 1. 'Time' of transaction, formatted with .strftime
- 2. 'Credit' the ammout added to balance, formatted with decimals
- 3. 'Debit' the ammout subtracted from balance, formatted with decimals
- 4. 'Balance' The total ammout in the account, formatted with decimals

### Use

Clone this repo and navigate to it in your terminal

run `bundle` to install all gems

run `rspec` to run tests

run `open coverage/index.html` to run simplecov and see test coverage

don't run `rubocop` to check code syntax


### Refelction

*Things I need to do to impove this project*

Split classes
Split Methods
Rename variables and arugments
Write better tests
Test edge cases
