Companies use a diverse set of tools and approaches to build unique and effective DevOps pipelines customized for the needs of their organization. Common steps include establishing a CI/CD tool, sourcing a control environment, setting up a build server, setting up build automation tools for testing, and deploying to production.

##### Step 1: [Establish CI/CD Tool/Framework]()

For companies just getting started building a DevOps pipeline, the first order of business is to pick a CI/CD tool. Each company has different needs and requirements, so not every tool will be right for every situation. While there are many CI/CD tools available, Jenkins is one of the most commonly used tools. Jenkins features hundreds of community-contributed plugins and tools, so it can easily be customized to work well for many different applications.

##### Step 2: [Source a Control Environment](/dtig-wiki/Training/DevOps-Principles/Source A Control Environment)

Companies working with large development teams need a dedicated place to store and share the ever-changing code, avoid merge conflicts, and easily create different versions of the app or software. Source control management tools such as Git allow for effective collaboration with team members from anywhere in the world, storing code from each developer in a separate shared repository. BitBucket and GitLab are two other popular source control management tools.

##### Step 3. Set up a Build Server

Setting up a build server, which is also called a continuous integration (CI) server is a crucial next step before your project can make its way down the rest of the pipeline. A build server is a centralized, stable and reliable environment for building distributed development projects. Build servers retrieve integrated code from source code repositories, acts as an integration point for all developers, and provides an untainted environment to make sure that the code actually works.  
Like other tools mentioned above, companies can choose from many build servers, each with different features. Jenkins is one of the most popular solutions for creating builds. Other solutions include TeamCity, Travis-CI, and go.cd.

##### Step 4. Setup or Build Automation Tools for Testing

Once code is configured on the build server, it is time to test it! In the testing phase, developers run automated tests to ensure that only error-free code continues down the pipeline to the deployment stage. Several automated tests are performed at the testing stage including unit, functional, integration, and regression tests. Most tests are run through CI and run one after the other.  
To start running tests, TestComplete is a good option. It has a Jenkins plugin that enables you to run tests in a Jenkins Pipeline project with added features such as storing the test history and enabling you to see the results directly from Jenkins.

##### Step 5. Deploy to Production

The final stage of your pipeline is the deploy stage where your software is ready to be pushed to production. The easiest way to deploy the code is by configuring your build server, such as Jenkins, to run a script to deploy your application. This can be set up to run automatically or you can do it manually. Automatic deployment should only be used if you are fully confident that bad code won’t end up in production. You can link this to your test builds, so that the script only runs if all the tests have been passed.

Public: Yes