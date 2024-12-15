# Calculate GPA 

![Team Logo](https://github.com/nustafanert/icp_hackathon/blob/dc02b77e0d2c165810c2c1d3681517a44d4b815d/maskotsquare.jpg)

This project helps students calculate and manage their GPA based on their grades and lesson credits. It uses the Internet Computer Protocol (ICP) blockchain to store and calculate the GPA through smart contracts written in Motoko.

## Prerequisites

- **ICP (Internet Computer Protocol)**: Ensure that you have access to ICP and can deploy a smart contract on the network.
- **Motoko**: This project uses Motoko for smart contract development. Make sure you have it installed.
- **Backend Development Tools**: You will need a backend service to interact with the ICP canister and expose APIs.

## About Me

Mustafa Mert Altınsoy is a student at Ege University who began exploring coding languages in 2019. His interest grew toward game and Android app development, and he participated in various YouTube software courses. Just a day ago, he developed his first code in ICP. Mustafa has a passion for robots, machines, and animes, combining his love for technology and creativity in his projects.

## Description

**Calculate GPA: A Student's Guide to Success**  

The *Calculate GPA* project is an application built on the Solana Blockchain to help students calculate and predict their Grade Point Average (GPA). With this app, students can input their exam grades and lesson credits to quickly and accurately calculate their current GPA.  

Additionally, the app allows students to plan for their future academic success. By entering predicted grades, they can see how these might impact their GPA in upcoming semesters.  

Using blockchain technology ensures the security and transparency of the calculations. Students can trust the app for its reliability and ease of use, helping them stay informed about their academic progress anytime, anywhere.  

This project combines practicality with innovation, providing a simple yet powerful tool for students worldwide.

## Vision
Our vision for Calculate GPA is to empower students globally by providing a simple, accessible tool to manage their academic progress. By offering features like GPA calculation, grade prediction, and identifying the minimum points needed to pass, we aim to reduce academic stress and improve decision-making.

With the power of the Solana Blockchain, we ensure secure and reliable calculations for students anywhere in the world. We aspire to make academic planning easier, enabling more students to take control of their studies and succeed. Together, we can build a smarter, more confident generation of learners.

## Project Ideas
ICP(ic.sdk) and .dfx

## Programming Language
Motoko & Web3

## Project Roadmap

**Software Development Plan for Calculate GPA**

1. **Define Smart Contract Structure**  
   - **Variables**:  
     - `lessonId`: Unique identifier for each lesson.  
     - `grades`: Record to store grades for each lesson (e.g., `{visa: Nat, final: Nat}`).  
     - `credits`: Record mapping `lessonId` to credit values.  

   - **Functions**:  
     - `addLesson(lessonId: Text, grades: {visa: Nat; final: Nat}, credits: Nat)`: Adds a lesson with grades and credits.  
     - `updateGrades(lessonId: Text, grades: {visa: Nat; final: Nat})`: Updates grades for a lesson.  
     - `getLesson(lessonId: Text)`: Retrieves details of a lesson.  
     - `deleteLesson(lessonId: Text)`: Deletes a lesson by its ID.  
     - `calculateGPA(): Float`: Computes the total GPA based on all lessons and their credits.  

2. **Develop Smart Contract Logic**  
   - Implement all smart contract functions in Motoko.  
   - Validate inputs to ensure data integrity (e.g., grades within range, credits positive).  
   - Test contract functions individually for accurate results and error handling.  

3. **Integration of Backend with Smart Contract**  
   - Connect the backend to the Motoko smart contract using ICP's canister API.  
   - Ensure the backend API is able to call smart contract functions for adding, updating, and deleting lessons, as well as calculating the GPA.  
   - Develop a backend service to handle communication with the smart contract.  
   - Features:  
     	- Query and update functions for grade and lesson data.  

4. **Testing and Quality Assurance**  
   - Perform unit testing on smart contract functions to ensure accuracy.  
   - Test backend API endpoints for functionality, security, and performance.  
   - Conduct end-to-end tests to validate the interaction between the backend and the smart contract.  

5. **Deployment**  
   - Deploy the smart contract on the Internet Computer (ICP), ensuring that it is well-configured and optimized.  
   - Host the backend service and expose it via secure endpoints for public use.  
   - Monitor system performance and user activity, addressing any issues and ensuring smooth operation.

## Smart Conctract We Use

## Setup Environment
Calculate GPA - Project Installation Guide

This project allows students to calculate their GPA based on their grades and lesson credits using the Internet Computer Protocol (ICP) blockchain. The GPA is computed through a smart contract written in Motoko.
Prerequisites

Before you start, make sure you have the following installed:

    ICP (Internet Computer Protocol): Set up access to ICP and deploy a smart contract on the network.
    Motoko: The smart contract is written in Motoko. You can install Motoko via the ICP SDK.
    Backend Development Tools: A backend service (Node.js, Python, etc.) to interact with the ICP canister and expose APIs.

Installation Steps

Follow these instructions to get the project running locally.
1. Clone the Repository

Clone the repository to your local machine:

git clone https://github.com/yourusername/calculate-gpa.git
cd calculate-gpa

2. Set Up the Smart Contract
Define Smart Contract Structure

The smart contract will store lesson data using the following structure:

    Variables:
        lessonId: Unique identifier for each lesson.
        grades: A record to store grades (e.g., {visa: Nat, final: Nat}).
        credits: A record mapping lessonId to the respective credit value.

Smart Contract Functions:

    addLesson(lessonId: Text, grades: {visa: Nat, final: Nat}, credits: Nat): Adds a new lesson with grades and credits.
    updateGrades(lessonId: Text, grades: {visa: Nat, final: Nat}): Updates grades for a lesson.
    getLesson(lessonId: Text): Retrieves the details of a lesson.
    deleteLesson(lessonId: Text): Deletes a lesson.
    calculateGPA(): Computes the GPA based on all lessons and their respective credits.

3. Develop and Deploy the Smart Contract

    Implement the smart contract functions in Motoko.
    Deploy the contract to the ICP network using the tools provided in the ICP SDK.
    Test each contract function for accuracy and ensure that all functions perform as expected.

4. Backend Development
Set Up the Backend Service

Develop a backend service (e.g., using Node.js, Python, etc.) that interacts with the ICP canister via API calls.

    Endpoints:
        POST /addLesson: Add a new lesson with grades and credits.
        PUT /updateGrades: Update grades for an existing lesson.
        GET /getLesson: Retrieve the details of a lesson.
        DELETE /deleteLesson: Delete a lesson.
        GET /calculateGPA: Retrieve the GPA calculated from all lessons.

5. API Integration with Smart Contract

    Connect the backend service to the Motoko smart contract using ICP’s canister API.
    Ensure the backend APIs call the smart contract functions for adding, updating, deleting lessons, and calculating the GPA.

6. Testing and Quality Assurance
Testing:

    Unit Testing: Test individual smart contract functions for correctness.
    Backend Testing: Test API endpoints to ensure they function correctly, are secure, and are optimized for performance.
    End-to-End Testing: Perform tests to validate interaction between the backend and smart contract.

7. Deployment
Deploy the Smart Contract:

    Deploy the smart contract on ICP, ensuring it’s configured and optimized.

Host the Backend:

    Deploy the backend service and expose the APIs securely.

Monitor:

    Continuously monitor system performance and fix issues as needed to ensure a smooth operation.

Contributing

If you’d like to contribute to this project, feel free to fork the repository, create a new branch, and submit a pull request with your changes.
License

This project is licensed under the MIT License - see the LICENSE file for details.
