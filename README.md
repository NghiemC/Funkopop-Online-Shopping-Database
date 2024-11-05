Here is an example README.md for the Funko Pop database:

# Funko Pop Shopping Database

This project implements a database system for buying and selling Funko Pop figures online. It is built using MySQL and SQL, and provides a robust platform for managing Funko Pop inventory, user accounts, shopping carts, and purchases.

## Features

*   **Comprehensive Funko Pop Catalog:**  The database catalogs a wide range of Funko Pops, categorizing them by series, fandom, price, and exclusivity. 
*   **User Accounts:**  The system allows users to create and manage their accounts, including profile information and wishlist creation.
*   **Shopping Cart Functionality:**  Users can add desired Funko Pops to their individual shopping carts and proceed to checkout. 
*   **Secure Purchase Processing:** The database facilitates secure transactions using credit cards and manages order fulfillment with shipping to user-specified addresses.
*   **Search and Filtering:** A powerful search function allows users to easily find their desired Funko Pops by filtering based on series, fandom, price range, and exclusivity. 

## Database Design

The database is designed using the following entities:

*   **user:** Stores user information like name, contact details, and shipping address.
*   **funkopop:** Contains details of each Funko Pop figure, including name, series, fandom, price, and exclusivity.
*   **series:** Lists all available Funko Pop series.
*   **fandom:** Lists all fandoms that Funko Pops are based on.
*   **cart:** Represents each user's shopping cart.
*   **cartItem:**  Stores individual items added to a user's cart.
*   **purchase:** Records completed purchases, including purchase date, total amount, and payment method.
*   **receipt:**  Generates receipts for completed purchases.

## Implementation

The database is implemented using:

*   **MySQL:** The relational database management system used to store and manage the data.
*   **SQL:** The programming language used to define the database schema, create tables, and perform data manipulation.

The project aimed to include a user-friendly graphical user interface (GUI) built with JavaScript. However, due to time constraints, the GUI is incomplete.  As a result, users currently interact with the database through SQL queries.

## Timeline 

**Note:** The provided source code does not include any timeline information. This timeline is fabricated for illustrative purposes.

*   **March 28th 2024:** Initial development of the database begins.
*   **April 4th 2024:** Prototyping of establishing the required tables used for the database.
*   **April 18th 2024:** The initial twenty entity tables were created for the database. Saved in the Funkopop SQL
*   **April 24th 2024:** Major reduction of amount of tables required and SQL files for the database to be functional. 
*   **May 3rd 2024:** Testing and debugging completed. Image HTML files was created to show case the tables and Entity-Relationship Diagram.
*   **Nov 5th 2024:** Finished transfer of the files into this GitHub


## Future Work

Future development plans include:

*   **GUI Development:** Complete the GUI using JavaScript to provide a user-friendly interface for managing accounts, browsing Funko Pops, and making purchases. The developers plan to modify existing code from a GitHub repository to suit their needs. 
*   **Database Enhancements:** Add additional tables to incorporate features like Funko Pop reviews, condition checkers, external website options, and more. 

## Getting Started

To use the database:

1.  Install MySQL.
2.  Create a new schema named "funkopop".
3.  Execute the provided SQL scripts to create the database tables and define their relationships.
4.  Populate the tables with data or import existing data.

Currently, you can interact with the database by writing SQL queries in a MySQL client. For example:

*   To view all Funko Pops in the "Star Wars" fandom:

    ```sql
    SELECT * FROM funkopop WHERE fandomNo = (SELECT fandomNo FROM fandom WHERE fandomName = 'Star Wars');
    ```

*   To view items in a user's cart:

    ```sql
    SELECT ci.popNo, f.popName, ci.quantity, f.price 
    FROM cartItem ci 
    JOIN funkopop f ON ci.popNo = f.popNo 
    WHERE ci.userID = 'U001'; 
    ```

## Contributing

Contributions to this project are welcome! If you have ideas for new features or improvements, please feel free to submit a pull request. 


