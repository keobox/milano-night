import kopf
from kubernetes import client
from kubernetes import config

def business_logic(api, name):
    """A difficult task"""
    node = api.read_node_status(name)
    num_cpus = int(node.status.capacity['cpu'])
    print("CPU # ", num_cpus)
    if num_cpus >= 16:
        print(f"{name} is big enough")
        patch = {"metadata": {"labels": {"big_enough": "yes"}}}
        api.patch_node(name, patch)


@kopf.on.create('v1', 'node')
def create_fn(spec, name, **kwargs):
    """The Create Callback it fires on create events."""
    print(f"And here we are! Creating: {spec}")
    print("Resource Name:", name)
    config.load_kube_config()
    api = client.CoreV1Api()
    business_logic(api, name)

