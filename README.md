#

A new Flutter project.

## Installation

**To run the app in your system**

1. Clone the repository
2. Open the project in VS Code (or android studio if you prefer)
3. Run the command `flutter pub get` to install all the dependencies
4. Run the command `flutter run` to run the app in your device or emulator

**To install the app in your device**

1. Go to the releases section of this repository
2. Download the latest apk
3. Install the apk in your device

## Test guide

**The Admin Section**

There is only one action that the admin can do witch is to add a new user to the database. To do so,

1. Click on the floating action button in the bottom right corner of the screen
2. Enter the details of the user (name, role)
3. Click on the add button

A new user should be added to the database and the list of users should be updated.

Screenshots:

| Step 1                             | Step 2                            | Step 3                            |
|------------------------------------|-----------------------------------|-----------------------------------|
| <img src="assets/a-1.png" alt="">  | <img src="assets/a-2.png" alt=""> | <img src="assets/a-3.png" alt=""> |

**The Agent Section**

The agent can do the following actions:

1. Sign in to his account
2. View the list of customer that he/she is created
3. Add a new customer 
4. Submit a customer to one of the managers
5. see if the customer is Approved or Not approved by the manager

To sign in to the agent account,

1. Enter the username and password of the agent
2. Click on the sign in button

Screenshots:

| Step 1                             | Step 2                             |
|------------------------------------|------------------------------------|
| <img src="assets/sa-1.png" alt="">  | <img src="assets/sa-2.png" alt=""> |

To add a new customer,

1. Click on the floating action button in the bottom right corner of the screen
2. Enter the details of the customer (name, birthdate, address)
3. Click on the add button
4. The customer should be added to the list of customers

Screenshots:

| Step 1                             | Step 2                             |
|------------------------------------|------------------------------------|
| <img src="assets/ad-1.png" alt="">  | <img src="assets/ad-1.png" alt=""> |

To submit a customer to one of the managers,

1. Click on the customer that you want to submit
2. Click on the manager that you want to submit the customer to
3. The customer should be submitted to the manager

Screenshots:

| Step 1                              | Step 2                              |
|-------------------------------------|-------------------------------------|
| <img src="assets/asc-1.png" alt=""> | <img src="assets/asc-2.png" alt=""> |

**The Manager Section**

The manager can do the following actions:

1. Sign in to his account
2. View the list of customer that he/she is Submitted to
3. Approve or Not approve a customer
4. He can filter by the not approved customers only by clicking on the floating action button in the bottom right corner of the screen

To sign in to the manager account, It is the same as the agent sign in.

To approve or not approve a customer,

1. Click on the customer that you want to approve or not approve
2. Click on the approve or not approve button

Screenshots:

| Step 1                             | Step 2                             |
|------------------------------------|------------------------------------|
| <img src="assets/ma-1.png" alt=""> | <img src="assets/ma-2.png" alt=""> |


