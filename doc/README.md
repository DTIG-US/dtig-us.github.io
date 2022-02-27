# Functions

## LogInToDevOps _Login-MultipleAzureDevopsTenants.ps1_

  - Allows a user to login to DTIG ADO and select the organization they would like to access.
  - This can be used in a variety of scripts by importing the function.

### Breakdown

The first relevant code piece is here:

`az login -u $username -p $PATToken --allow-no-subscriptions --organization $Organization`

  - The `--allow-no-subscriptions` switch lets the user bypass the lack of accessible subscriptions

    ```
    You have logged in. Now let us find all the subscriptions to which you have access...
    The following tenants don't contain accessible subscriptions. Use 'az login --allow-no-subscriptions' to have tenant level access.
    52b4a003-0571-4a91-bbe2-66cdee34d068
    dce40b33-bbfa-4a15-bdfa-12dced098ddc
    No subscriptions found.
    ```

  - The $PATToken variable is a one-time password that you generate using your DevOps account.  [PAT Token](https://dev.azure.com/DigitalTransformationInnovatorsGroup/_usersSettings/tokens)
