project_id = "cogent-tide-366115"
network_name = ["homelab-vpc01","homelab-vpc02"]


subnets = [
        {
            network_name_for_subnet           = "homelab-vpc01"
            subnet_name           = "homelab-subnet-01"
            subnet_ip             = "10.10.10.0/29"
            subnet_region         = "asia-south2"
            subnet_private_access = "true"
        },
        {
            network_name_for_subnet          = "homelab-vpc02"
            subnet_name           = "homelab-subnet-02"
            subnet_ip             = "10.10.20.0/29"
            subnet_region         = "us-west1"
            subnet_private_access = "true"
        }
]


secondary_ranges = {

    homelab-subnet-01 = [
        {
        range_name    = "homelab-subnet-01-pods-secondary-01"
        ip_cidr_range = "192.168.64.0/29"
        },
        {
        range_name    = "homelab-subnet-01-services-secondary-01"
        ip_cidr_range = "192.168.65.0/29"
        }
    ]
    homelab-subnet-02 = [
        {
        range_name    = "homelab-subnet-02-pods-secondary-02"
        ip_cidr_range = "192.168.66.0/29"
        },
        {
        range_name    = "homelab-subnet-02-services-secondary-02"
        ip_cidr_range = "192.168.67.0/29"
        }
    ]
}
    

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