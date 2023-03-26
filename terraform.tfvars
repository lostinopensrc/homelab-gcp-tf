project_id = "cogent-tide-366115"
network_name = ["homelab-vpc01","homelab-vpc02"]

buckets =   [
    {
        name = "homelab-bucket01"
        location = "asia-south2"
        force_destroy = "true"

    },
    {
        name = "homelab-bucket02"
        location = "us-west1"
        force_destroy = "true"

    }
]