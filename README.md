# Introduction

The purpose of this repository is to evaluate the practical skills and technical competencies of DevOps Engineer applicants with regards to Containers, CI/CD, Infrastructure as Code & Cloud-based Infrastructure.

## Sample application

For convenience, we've included a simple Node.js application.

It requires `npm` and `node` to work locally.

To install node dependencies simply run:
```
$ npm install
```

And to run the application locally:

```
$ npm start
```

When visiting http://localhost:8080, the application should respond with `Hello World!`.

## Primary tasks

Your job is to
1. create your own branch or fork for repository
2. Dockerize the application
3. Set up CI/CD for the repository
    - 2.1. Any push to your branch or `main` branch in your repository should deploy the application.
    - 2.2. We recommend using GitHub Actions or Azure DevOps pipelines.
4. Deploy container to GCP - you can signup for a free account @ https://cloud.google.com/free/docs/free-cloud-features
    - 3.1. The deployed application should be accessible via the internet.
    - 3.2. We recommend using Terraform or CDKTF.

## Bonus tasks

1. Adding one or more automated tests to verify that the application was deployed to GCP and is running as expected.
2. Add centralized logging.
3. Suggest one or more alternative solutions on the CI/CD workflows, instead of simply deploying on every pushed commit to the `main` branch. You do not have to implement the workflow, but should at least document the workflows in text in your repo.
4. Add a feature to the application that invokes one or more GCP services.
5. deploy the container to GKE

## Evaluation

The assignment delivery will be evaluated based on the applicant's abilities to
- create Infrastructure as Code
- apply Docker best practices
- take security considerations into account in each task
- (_Bonus points for writing automated infrastructure tests_)

## Delivering your solution

The solution should be pushed to a git repository and a link to the repository should be shared.
