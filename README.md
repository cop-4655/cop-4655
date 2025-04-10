# Xpense

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

**Xpense** is an expense tracking app.

### App Evaluation

- **Category:** Finance
- **Mobile:** Yes, it is a mobile application only
- **Story:**  [What story does your app tell?]
- **Market:** General audience
- **Habit:** Daily use
- **Scope:** Narrow

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can track their expenses
* User can view home page (with home icon/button at the bottom)
* User can add expenses/etc. by pressing the Plus (**+**) icon/button at bottom
* User can sign up and login an account

**Optional Nice-to-have Stories**

* User can choose between light and dark mode
* User can view generated graphs based on their data
* User can view calendar or something to show spending per week, month, etc.
* User can view daily/weekly/etc. tips providing useful financial advice, etc.
* User can view and modify profile and/or settings page (also has icon/button at bottom)
* User can login to account with ocal authentication framework (i.e. Local FaceID/Biometric Login)
* User can view notifications page/tab (also has icon/button at bottom)
* User can separate expenses by category (e.g. food/drink, traveling, entertainment, bills/taxes, etc.)
* User can scan/upload image of receipt to add receipt data to expenses (i.e. automated receipt capture)
* User can view overview page with [circle] graphs displaying expenses (also has icon/button at bottom)
* User can track and see how expenses differ from one week/month/etc. to another (e.g. mean expenses on food, gas, etc.)
* User can create budgets and keep track of them/notify when the budget is exceeded or close to being exceeded
* User can use tags feature; similar to categories, except users can define the tag

### 2. Screen Archetypes

- [ ] **Login Screen**
* User can log in
- [ ] **Sign up Screen**
* User can sign up
- [ ] **Home Screen**
* User can view transactions
- [ ] **User Screen**
* User can view and edit username
* User can view and edit email
* User can view and edit password
- [ ] **Expense Screen**
* User can add expenses (name, amount, category)

### 3. Navigation

**Tab Navigation** (Tab to Screen)

- [ ] Home Page
- [ ] User Page
- [ ] Expense Page
- [ ] Logout

**Flow Navigation** (Screen to Screen)

- [ ] [**Home Page**]
  * Leads to [**Sign-in Page**]
  * Leads to [**User Page**]
  * Leads to [**Expense Page**]
- [ ] [**Sign-in Page**]
  * Leads to [**Home Page**]
  * Leads to [**Sign up Page**]
- [ ] [**Sign-up Page**]
  * Leads to [**Home Page**] 
- [ ] [**User Page**]
  * Leads to [**Sign-in Page**]
  * Leads to [**Home Page**]
  * Leads to [**Expense Page**]
- [ ] [**Expense Page**]
  * Leads to [**Home Page**]

## Wireframes

![Xpense Wireframe excalidraw](https://github.com/user-attachments/assets/aa3be432-6f4c-4299-a257-b6990ce12035)

## Schema 

### Models

[User Model]
| Property | Type   | Description                                  |
|----------|--------|----------------------------------------------|
| username | String | unique id for the user post (default field)  |
| password | String | user's password for login authentication     |
| email    | String | user's email                                 |

[Expense Model]
| Property | Type   | Description                                  |
|----------|--------|----------------------------------------------|
| name     | String | name of expense                              |
| amount   | double | expense price (usd)                          |
| category | String | expense category (e.g. food, etc.)           |               

### Networking

- `[GET] /users` - to retrieve user data
- `[GET] /expenses` - to retrieve expense data
- `[POST] /users` - to save user data
- `[POST] /expenses` - to save expense data
