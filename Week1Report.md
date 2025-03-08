# Week 1 Report


### Function Execution Results

#### 1. Initial State Verification
- Function executed: `helloWorld()`
- Transaction hash: 0x8d592e8f7a1f1c5e8109dc83cbfee0ccc381bf87f4a669292f5795e84f21700e
- Result: Successfully returned "Hello World"
- Outcome: Success
- Note: This verified the contract was deployed correctly with default values

#### 2. Changing Message Text
- Function executed: `setText("hello")`
- Transaction hash: 0xf7529e35a8c0dfbffb7cecc8f417f43991c82a2eab371a9fd7ea3f7ed42cfc24
- Result: Changed the text from "Hello World" to "hello"
- Outcome: Success
- Note: As the contract owner, I was able to successfully change the text

#### 3. Verifying Text Change
- Function executed: `helloWorld()`
- Result: Successfully returned "hello"
- Outcome: Success
- Note: This verified that the text was properly updated

#### 4. Transferring Ownership
- Function executed: `transferOwnership(0x742d35Cc6634C0532925a3b844Bc454e4438f44e)`
- Transaction hash: 0x1bb4dcbdce99e49f28708d70bcda3c13b034bece0add0ba28eda883d15c5f388
- Result: Ownership was successfully transferred to the new address from original msg.sender's address
- Outcome: Success

#### 5. Attempting to Change Text After Ownership Transfer
- Function executed: `setText("hi")`
- Revert reason: "Caller is not the owner"
- Outcome: Failure
- Note: This confirms the `onlyOwner` modifier is functioning correctly. Transaction reverted due to caller not being the owner 

