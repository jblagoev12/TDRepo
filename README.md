# TDRepo
Demo Repository / how to integrate Touchless Deployment for SAP Commissions.

Every time a code is pushed in the main branch of the repository, it triggers github workflow which executes a Touchless Deployment UPDATE to a demo tenant 0531(based on the content in the SQLs folder).

* folders bin and lib contain the touchless deployment script and libraries. These can be downloaded from https://help.sap.com.

* folder SQLs contain all SQL files which will be deployed on the commissions tenant.

* folder githhub/workflows contains a simple workflow which trigger the touchless deployment to Commissions.

With current setup we demonstrate how to move code changes into a single tenant.
