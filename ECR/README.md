# AWS ECR

To Create private ECR repository apply ecr terraform code.
```
terraform init
terraform plan
terraform apply
```

### Authenticate your Docker client to the Amazon ECR registry

```
export region=us-east-1
export aws_account_id=<your-account-id>

aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $aws_account_id.dkr.ecr.$region.amazonaws.com
```

### Check local images to push
```
docker images
```

### Tag your image with ECR registry
```
export ecr_repo=ecr_demo
docker tag my-nginx $aws_account_id.dkr.ecr.$region.amazonaws.com/$ecr_repo:latest
```

### Push image
```
export tag=latest
docker push $aws_account_id.dkr.ecr.$region.amazonaws.com/$ecr_repo:$tag
```

This is how it looks like once you push the image to the ECR

![Alt text](/img/ecr_pushed.png?raw=true "Imaged Pushed")


## Pullling an Image

Find repos in your registry
```
aws ecr describe-repositories
```

Find images in the repo
```
aws ecr describe-images --repository-name $ecr_repo
```

Pull Image from repo
```
docker pull $aws_account_id.dkr.ecr.$region.amazonaws.com/$ecr_repo:$tag
```


## Clean up

To destroy all the resources
```
terraform destroy
```