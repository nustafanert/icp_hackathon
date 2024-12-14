# Calculate GPA 

This project helps students calculate and manage their GPA based on their grades and lesson credits. It uses the Internet Computer Protocol (ICP) blockchain to store and calculate the GPA through smart contracts written in Motoko.

## Prerequisites

- **ICP (Internet Computer Protocol)**: Ensure that you have access to ICP and can deploy a smart contract on the network.
- **Motoko**: This project uses Motoko for smart contract development. Make sure you have it installed.
- **Backend Development Tools**: You will need a backend service to interact with the ICP canister and expose APIs.

## Individual

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

## Software Development Plan

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

