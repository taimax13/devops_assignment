# devops_assignment
**Creation of a Helm Chart including Application and Database**


**Details:**

1. **Application and Deployment:** 

Please choose the regestry to upload you image 
run from the source folder 
```docker build . -t test-v0.1.1```
```docker tag test-v0.1.1 <regestry-tag>```
```docker pusg <regestry-tag>```

2. **Database and Deployment:** 

- Please use official installation of https://artifacthub.io/packages/helm/bitnami/postgresql - for postgress
- Please run:
 ```helm package application-chart.yaml```
  and then deploy it using:
  ``` helm install application-chart application-release --values values.yaml``` 

3. **Helm Chart:** Create a Helm chart that includes at least:
   please note here 2 ways of expose application service.yaml and ingress.yaml for application. On actuall deployment will be used only one of them 

   service is an abstraction that provides a consistent way to access and load balance traffic to a set of pods. It acts as a stable endpoint for other services or external clients within the cluster. Services can be exposed internally within the cluster (ClusterIP), exposed externally using a NodePort or LoadBalancer, or used for communication between services (e.g., using a Headless Service). Services operate at the transport layer (Layer 4) and can handle TCP and UDP traffic.

   Ingress is an API object that manages external access to services within a cluster. It provides a way to route and control HTTP and HTTPS traffic to different services based on rules defined by the user. 

   - A Deployment for the application. It should use the Docker image you've created.
   - A Deployment for the database. It should use the official PostgreSQL Docker image. hmmm - why not to run from bitnami? 
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
