# App Service (インフラのみ) のdeploy

## 実行準備

1. 初期化

    ```
    terraform init
    ```

1. 変数ファイルの作成

    `./terraform.tfvars` ファイルを作成。
    内容は以下の通り。

    ```
    TENANT_ID       = "<YOUR_TENANT_ID>"
    SUBSCRIPTION_ID = "<YOUR_SUBSCRIPTION_ID>"
    location        = "eastus"
    prj             = "z-appsvc"
    env             = "test"
    sku             = "P1v3"
    ```

## リソースデプロイ

1. Azureログイン

    ```
    az login
    ```

1. プラン、デプロイ

    ```
    terraform apply
    ```

    (*) 自動適用したい場合 `-auto-approve` オプションを付ける


## リソース削除


1. Azureログイン

    ```
    az login
    ```

1. 削除

    ```
    terraform destroy
    ```

    (*) 自動適用したい場合 `-auto-approve` オプションを付ける


## Appendix

### リージョンのリスト

|RegionalDisplayName                   |Name                |
|--------------------------------------|--------------------|
|(US) East US                          |eastus              |
|(US) East US 2                        |eastus2             |
|(US) South Central US                 |southcentralus      |
|(US) West US 2                        |westus2             |
|(US) West US 3                        |westus3             |
|(Asia Pacific) Australia East         |australiaeast       |
|(Asia Pacific) Southeast Asia         |southeastasia       |
|(Europe) North Europe                 |northeurope         |
|(Europe) Sweden Central               |swedencentral       |
|(Europe) UK South                     |uksouth             |
|(Europe) West Europe                  |westeurope          |
|(US) Central US                       |centralus           |
|(Africa) South Africa North           |southafricanorth    |
|(Asia Pacific) Central India          |centralindia        |
|(Asia Pacific) East Asia              |eastasia            |
|(Asia Pacific) Japan East             |japaneast           |
|(Asia Pacific) Korea Central          |koreacentral        |
|(Canada) Canada Central               |canadacentral       |
|(Europe) France Central               |francecentral       |
|(Europe) Germany West Central         |germanywestcentral  |
|(Europe) Italy North                  |italynorth          |
|(Europe) Norway East                  |norwayeast          |
|(Europe) Poland Central               |polandcentral       |
|(Europe) Switzerland North            |switzerlandnorth    |
|(Middle East) UAE North               |uaenorth            |
|(South America) Brazil South          |brazilsouth         |
|(Middle East) Israel Central          |israelcentral       |
|(Middle East) Qatar Central           |qatarcentral        |
|(US) Central US (Stage)               |centralusstage      |
|(US) East US (Stage)                  |eastusstage         |
|(US) East US 2 (Stage)                |eastus2stage        |
|(US) North Central US (Stage)         |northcentralusstage |
|(US) South Central US (Stage)         |southcentralusstage |
|(US) West US (Stage)                  |westusstage         |
|(US) West US 2 (Stage)                |westus2stage        |
|Asia                                  |asia                |
|Asia Pacific                          |asiapacific         |
|Australia                             |australia           |
|Brazil                                |brazil              |
|Canada                                |canada              |
|Europe                                |europe              |
|France                                |france              |
|Germany                               |germany             |
|Global                                |global              |
|India                                 |india               |
|Israel                                |israel              |
|Italy                                 |italy               |
|Japan                                 |japan               |
|Korea                                 |korea               |
|New Zealand                           |newzealand          |
|Norway                                |norway              |
|Poland                                |poland              |
|Qatar                                 |qatar               |
|Singapore                             |singapore           |
|South Africa                          |southafrica         |
|Sweden                                |sweden              |
|Switzerland                           |switzerland         |
|United Arab Emirates                  |uae                 |
|United Kingdom                        |uk                  |
|United States                         |unitedstates        |
|United States EUAP                    |unitedstateseuap    |
|(Asia Pacific) East Asia (Stage)      |eastasiastage       |
|(Asia Pacific) Southeast Asia (Stage) |southeastasiastage  |
|(South America) Brazil US             |brazilus            |
|(US) East US STG                      |eastusstg           |
|(US) North Central US                 |northcentralus      |
|(US) West US                          |westus              |
|(Asia Pacific) Japan West             |japanwest           |
|(Asia Pacific) Jio India West         |jioindiawest        |
|(US) Central US EUAP                  |centraluseuap       |
|(US) East US 2 EUAP                   |eastus2euap         |
|(US) West Central US                  |westcentralus       |
|(Africa) South Africa West            |southafricawest     |
|(Asia Pacific) Australia Central      |australiacentral    |
|(Asia Pacific) Australia Central 2    |australiacentral2   |
|(Asia Pacific) Australia Southeast    |australiasoutheast  |
|(Asia Pacific) Jio India Central      |jioindiacentral     |
|(Asia Pacific) Korea South            |koreasouth          |
|(Asia Pacific) South India            |southindia          |
|(Asia Pacific) West India             |westindia           |
|(Canada) Canada East                  |canadaeast          |
|(Europe) France South                 |francesouth         |
|(Europe) Germany North                |germanynorth        |
|(Europe) Norway West                  |norwaywest          |
|(Europe) Switzerland West             |switzerlandwest     |
|(Europe) UK West                      |ukwest              |
|(Middle East) UAE Central             |uaecentral          |
|(South America) Brazil Southeast      |brazilsoutheast     |


### App Service Plan の SKU リスト

|name|code|
|---|---|
|Basic          |B1|
|Basic          |B2|
|Basic          |B3|
|Standard       |S1|
|Standard       |S2|
|Standard       |S3|
|Premium        |P1v2|
|Premium        |P2v2|
|Premium        |P3v2|
|Premium        |P1v3|
|Premium        |P2v3|
|Premium        |P3v3|
|ElasticPremium |EP1|
|ElasticPremium |EP2|
|ElasticPremium |EP3|
|Free           |Free1|
|Isolated       |Isolated1|
|Isolated       |Isolated2|
|Isolated       |Isolated3|
|Isolated       |Isolated1v2|
|Isolated       |Isolated2v2|
|Isolated       |Isolated3v2|
|Dedicated      |Dedicated1|
|Shared         |Shared|
|WebServer      |WebServer1|
|WebServer      |WebServer2|
|WebServer      |WebServer3|