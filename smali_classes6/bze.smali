.class public final Lbze;
.super Ljava/lang/Object;
.source "AvoidOnRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/FragmentManager;[Ljava/lang/String;ILbza;)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lbza;

    .prologue
    .line 35
    .line 1020
    :try_start_0
    const-string/jumbo v2, "AvoidOnRequest"

    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;

    .line 1021
    if-nez v2, :cond_2

    .line 1022
    new-instance v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;-><init>()V

    .line 1024
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "AvoidOnRequest"

    .line 1025
    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1026
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1027
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1134
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lbzz;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lbzz;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    .line 40
    .end local v1    # "fragment":Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;
    :cond_0
    :goto_1
    return-void

    .line 1139
    .restart local v1    # "fragment":Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;->a:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p1, p3, v4}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment$a;-><init>(I[Ljava/lang/String;Lbza;B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1142
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 37
    .end local v1    # "fragment":Lcom/alibaba/android/dingtalk/permission/compat/avoid/app/AvoidOnRequestFragment;
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestPermissions failed, error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2012
    const-string/jumbo v3, "permission"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    goto :goto_0
.end method