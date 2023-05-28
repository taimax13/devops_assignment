# devops_assignment
**Creation of a Helm Chart including Application and Database**

**Objective:**

Your task is to create a Helm chart for deploying the sample application along with its database in a Kubernetes cluster. The chart should include Kubernetes Deployments, Services, Liveness and Readiness Probes and Volumes.

**Details:**

1. **Application and Deployment:** Your provided with Dockerfile and source code.

2. **Database and Deployment:** For the purpose of this assignment, use a PostgreSQL database. It should be containerized using its official Docker image. 

3. **Helm Chart:** Create a Helm chart that includes at least:

   - A Deployment for the application. It should use the Docker image you've created.
   - A Deployment for the database. It should use the official PostgreSQL Docker image.
   - A Service to expose the application to the network.
   - A Service to expose the database within the cluster (it should not be accessible from outside the cluster).
   - Liveness and Readiness probes. These should be defined in your Deployments to check the health of your application and database.
   - Secrets. Assume that your application needs a connection string to connect to the database. You should create a Secret to hold this connection string, and the application should access this Secret via environment variable.

4. **Environment Variables and Volumes:**
   - Apart from the database connection string, assume your application requires several other environment variables to be set. These can be dummy variables, but they should be defined in your Deployment and read by your application.
   - The database should be set up with a persistent volume so that data isn't lost when the container stops.
   - Assume your application needs to write logs to a file. Set up a Volume in your Kubernetes cluster and mount it into your application pods so the application can write logs there.

**Submission:**

You should submit:

1. The source code for your application.
2. Your Dockerfile.
3. Your Helm chart, including all required YAML files.
4. A README file that includes:
   - A brief explanation of your design decisions.
