# Google Cloud Platform(GCP) and Terraform workshop at GDG London
This repository contains terraform examples to manage infrastructure on Google Cloud Platform(GCP).

> :warning: **WARNING**:
> Running examples in this repository may incur charges on your GCP account.
> We cannot be responsible for any charges you may incur.


## Prerequisite
1. Linux or MAC workstation.
2. `wget` package installed on your workstation.
3. Python 2.7 is installed.

## How to install Terraform?

1. Download terraform package from [terraform.io/downloads](ttps://terraform.io/downloads.html).
```bash
wget https://releases.hashicorp.com/terraform/0.12.15/terraform_0.12.15_linux_amd64.zip -O /tmp/terraform.zip
```

2. Unzip the terraform binary to a directory which is included in your system `PATH`.
```bash
sudo unzip /tmp/terraform.zip -d /usr/local/bin/
```

3. Reload your shell.
```bash
exec -l $SHELL
```

4. Verify installation.
```bash
terraform --help
```


## How to install Google Cloud SDK?
1. Set the directory for `google-cloud-sdk`.
```bash
export GCLOUD_PATH=$HOME
```
**NOTE:** You can change from `$HOME` to any directory path you want.

2. Download `google-cloud-sdk`.<br>
  **For MAC users:**
```bash
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-271.0.0-darwin-x86_64.tar.gz -O $GCLOUD_PATH/google-cloud-sdk.tar.gz
```
  **For Linux users:**
```bash
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-271.0.0-linux-x86_64.tar.gz -O $GCLOUD_PATH/google-cloud-sdk.tar.gz
```

3. Extract the downloaded package.
```bash
cd $GCLOUD_PATH
tar -zxvf google-cloud-sdk.tar.gz
```

4. Run `install.sh` script to add Google Cloud SDK to your path.
```bash
./google-cloud-sdk/install.sh
```

5. Reload Shell.
```bash
exec -l $SHELL
```

## How to initialize Google Cloud SDK?
1. Initialize the SDK.
```bash
gcloud init
```

2. Accept to login to your Google account.
```
To continue, you must login. Would you like to log in (Y/n)? Y
```

3. This will open your browser and **prompt for permissions**. Login with your Google account credentials and **Allow**.

4. Select the preferred `project` and `zone`.

5. You should now see the following message for successful initialization.

  ```
  gcloud has now been configured!
  You can use [gcloud config] to change more gcloud settings.

  Your active configuration is: [default]
  ```

6. Verify initialization.
```bash
gcloud auth list
```

## How to run Terraform project?
1. Generate google authentication token.
```bash
gcloud auth application-default login
```

2. Navigate to terraform project directory.

3. Fill the code where mentioned `Update:`

4. Initialize terraform project.
```bash
terraform init
```

5. Generate terraform execution plan.
```bash
terraform plan
```

6. Run terraform apply, if plan looks good.
```bash
terraform apply
```

7. For **clean-up**, destroy all the resources created by terraform.
```bash
terraform destroy
```

## To revoke gcloud access from terminal
Run following command to revoke GCP credential from command-line.s
  ```bash
  $> gcloud auth revoke
  ```
<br><br>

##### Note: Always remember to **cleanup resources** when **NOT** needed to avoid additional charges.

## LICENSE
Please see [LICENSE.txt](LICENSE.txt)
