region       = "us-east-1"
cluster_name = "demo-eks"

subnet_ids = [
  "subnet-0d7de7faa9b327e21",
  "subnet-071751b1bc64b5715"
]

node_instance_types = ["t2.micro"]
desired_capacity    = 2
min_size            = 1
max_size            = 2

tags = {
  Environment = "dev"
  Project     = "eks-demo"
}
