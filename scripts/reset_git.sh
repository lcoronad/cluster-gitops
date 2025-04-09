source "$(dirname "$0")/functions.sh"

# Reset Git Values
echo "Resetting Git Values"
patch_file "components/argocd/apps/base/cluster-config-app-of-apps.yaml" "main" ".spec.source.targetRevision"
patch_file "components/argocd/apps/base/cluster-config-app-of-apps.yaml" "https://github.com/lcoronad/cluster-gitops.git" ".spec.source.repoURL"
patch_file "components/argocd/apps/base/cluster-config-app-of-apps.yaml" "clusters/overlays/demo.redhat.com" ".spec.source.path"

echo -e "\e[32mValues reset locally. Please commit and push changes to the repository.\e[0m"
