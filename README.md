# Introduction

This is a coding challenge. The goal is to test for coding ability, general Rails knowledge, and provide insight into your coding practices.

It is also a simple project since we want to be fair to you and your time.

This app is a skeleton, with only an action for '/'. The Gemfile contains all the gems we would like you to use.

Please implement the requested features below in the manner you believe most sensible using the gems provided. If you want to use another gem to make your life or environment easier, feel free to ask us.

Tips:

* Please provide tests for your features. The manner and number of tests is up to you. But use RSpec.
* This coding challenge is small, but you would do best to implement the features in a manner similar to how you would in a large or growing production app.
* We are not interested in pretty styling for purposes of this project. But we like presenters.
* If you think something is broken, missing, or nonsensical, just ask us. We won't judge you. We would rather you not waste your time trying to figure out what you are supposed to do. It will also help us improve this challenge.

# Requested Features

The app serves to help people cheat at Scrabble. A user can "plant" a gibberish word in the app's storage, causing searches for that word to return a hit, displaying the word and a bogus definition.

Specifications are as follows:

* A search for a word should return a page showing the word. If the word is a valid dictionary word or exists within the app's bogus word store, the definition should also be displayed. If the word does not exist in either the dictionary or the store, the page should indicate the word is not valid.
* If a searched word is prepended with an empty space and the word is neither a valid Scrabble word nor an existing word in the app's store: (1) the word should be planted in the app's store accompanied with a bogus dictionary definition or definitions (use the included literate_randomizer gem), and (2) the request should return a page with the word and the newly generated bogus definition(s).
* To give a greater appearance of credibility, a generated bogus word should randomly have between 1 and 4 definitions.
* Bogus words and definitions stored by the app should expire 2 hours after they are created, except as otherwise provided by these rules.
* If a searched word is prepended with an empty space and the word is not a valid Scrabble word but the word is an existing word in the app's store, the word's expiration time should be reset (i.e., expire in 2 hours)
* Definitions should be presented in substantially the following format: (1) [first definition]; (2) [second definition]; ...
* For cross-checking valid words and retrieving definitions, you can use the wordnik gem (we'll send you an api key to use). It should return a bunch of definitions for any given word -- you can just select up to the first 6 to display to the user. Feel free to make the API request inline.

# Submitting

Clone the repo. Create a branch. Implement the app. Push your branch up. Let us know you completed the challenge.
