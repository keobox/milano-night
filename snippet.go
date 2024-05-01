func (r *ManagedClusterForCguReconciler) Reconcile(ctx context.Context, req ctrl.Request) (ctrl.Result, error) {

    availableCondition := meta.FindStatusCondition(managedCluster.Status.Conditions, clusterv1.ManagedClusterConditionAvailable)
    if availableCondition == nil {
        return r.handleNotReadyCluster(managedCluster), nil
    } else if availableCondition.Status == metav1.ConditionTrue {
        // create clusterGroupUpgrade
        if err := r.newClusterGroupUpgrade(ctx, managedCluster, policies); err != nil {
            return ctrl.Result{}, err
        }
    } else {
        // availableCondition is false or unknown, cluster is not ready
        return r.handleNotReadyCluster(managedCluster), nil
    }
    return doNotRequeue(), nil
}
