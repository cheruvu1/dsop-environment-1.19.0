export DEPLOY_AKS="false"
export DEPLOY_FLUX="true"
export USE_KEYVAULT_CERT="false"

# Only used when DEPLOY_AKS is true
export AZURE_REGION="uksouth"
export AZURE_RESGRP="bigbang"

# Strongly advise NOT changing these
export AZURE_DEPLOY_NAME="bigbang"
export GPG_KEY_NAME="bigbang-sops"
export NAMESPACE="bigbang"
export BB_REPO="https://repo1.dso.mil/platform-one/big-bang/bigbang.git"
export BB_TAG="1.28.0"
