# Week 1 Report j6alvarez


### Function Execution Results

#### 1. Initial State Verification
- Function executed: `helloWorld()`
- Transaction hash: 0xd455e20d418c3d1a83ab5adc463b9a34488fd4cdc9b8a0d6458224ee8ba8d293
- Result: Successfully returned "Hello World"
- Outcome: Success
- Note: This verified the contract was deployed correctly with default values

#### 2. Changing Message Text
- Function executed: `setText("Hello")`
- Transaction hash: 0x4c330ca8dce84b67dd3571d161105a663d7b21c1551f4ea6cfd9845ae1de7cdc
- Result: Changed the text from "Hello World" to "hello"
- Outcome: Success
- Note: As the contract owner, I was able to successfully change the text

#### 3. Verifying Text Change
- Function executed: `helloWorld()`
- Result: Successfully returned "hello"
- Outcome: Success
- Note: This verified that the text was properly updated

#### 4. Transferring Ownership
- Function executed: `transferOwnership(0x3bF47084a7065Ec294553001D6c4351480DDFcEA)` Zeeast address
- Transaction hash: 0xfdb110b37cc226623be147a6c0b659e57765e5a08719ea722df982e60dedc192
- Result: Ownership was successfully transferred to the new address from original msg.sender's address
- Outcome: Success

#### 5. Attempting to Change Text After Ownership Transfer
- Function executed: `setText("hi")`
- Revert reason: "Caller is not the owner"
- Outcome: Failure
- Note: This confirms the `onlyOwner` modifier is functioning correctly. Transaction reverted due to caller not being the owner 

