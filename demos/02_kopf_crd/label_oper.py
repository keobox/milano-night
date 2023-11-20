import kopf
from kubernetes import client
from kubernetes import config

@kopf.on.create('kopfexamples')
def create_fn(spec, name, **kwargs):
    print(f"And here we are! Creating: {spec}")
    print("Resource Name:", name)
    config.load_kube_config()
    # Add a label
    patch_label = {"metadata": {"labels": {"kopf-operated": "true"}}}
    api = client.CustomObjectsApi()
    patched_resource = api.patch_namespaced_custom_object(
        group="kopf.dev",
        version="v1",
        plural="kopfexamples",
        namespace="default",
        name=name,
        body=patch_label,
    )
    print("Patched")
    return {'message': 'hello world'}  # will be the new status
