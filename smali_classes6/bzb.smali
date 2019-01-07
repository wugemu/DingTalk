.class public final Lbzb;
.super Ljava/lang/Object;
.source "AvoidOnRequestPermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/app/Activity;[Ljava/lang/String;Lbzc;)Lbza;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbzc;

    .prologue
    .line 170
    new-instance v0, Lbzb$3;

    invoke-direct {v0, p1, p3, p0, p2}, Lbzb$3;-><init>(Landroid/app/Activity;Lbzc;Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Landroid/app/Activity;I[Ljava/lang/String;Lbza;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbza;

    .prologue
    .line 139
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 140
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 1053
    .end local p0    # "activity":Landroid/app/Activity;
    if-eqz p0, :cond_0

    .line 1057
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Lbzf;->a(Lcn;[Ljava/lang/String;ILbza;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 1060
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz p0, :cond_0

    .line 1064
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Lbze;->a(Landroid/app/FragmentManager;[Ljava/lang/String;ILbza;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbzc;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {p2}, Lbzb;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Params permissions is incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_2
    instance-of v1, p3, Lbzd;

    if-eqz v1, :cond_3

    move-object v1, p3

    .line 114
    check-cast v1, Lbzd;

    invoke-virtual {v1, p0, p1, p2}, Lbzd;->init(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 116
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1, p0, p2, p3}, Lbzb;->a(Landroid/support/v4/app/Fragment;Landroid/app/Activity;[Ljava/lang/String;Lbzc;)Lbza;

    move-result-object v0

    .line 117
    .local v0, "avoidOnRequestCallback":Lbza;
    invoke-static {}, Lbzz;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    invoke-static {p0, p1, p2, v0}, Lbzb;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbza;)V

    .line 127
    :goto_1
    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, p2, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 120
    :cond_4
    new-instance v1, Lbzb$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lbzb$2;-><init>(Landroid/app/Activity;I[Ljava/lang/String;Lbza;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbza;)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbza;

    .prologue
    .line 132
    .line 1044
    if-eqz p0, :cond_0

    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Lbzf;->a(Lcn;[Ljava/lang/String;ILbza;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V
    .locals 3
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "callback"    # Lbzc;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p2}, Lbzb;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Params permissions is incorrect"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_2
    instance-of v1, p3, Lbzd;

    if-eqz v1, :cond_3

    move-object v1, p3

    .line 88
    check-cast v1, Lbzd;

    invoke-virtual {v1, p0, p1, p2}, Lbzd;->init(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lbzb;->a(Landroid/support/v4/app/Fragment;Landroid/app/Activity;[Ljava/lang/String;Lbzc;)Lbza;

    move-result-object v0

    .line 91
    .local v0, "avoidOnRequestCallback":Lbza;
    invoke-static {}, Lbzz;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-static {p0, p1, p2, v0}, Lbzb;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbza;)V

    .line 101
    :goto_1
    sget-object v1, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {p0, p2, v1}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lbzb$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lbzb$1;-><init>(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbza;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static a([Ljava/lang/String;)Z
    .locals 7
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 153
    :cond_1
    const/4 v0, 0x0

    .line 154
    .local v0, "hasSensitive":Z
    array-length v5, p0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, p0, v4

    .line 155
    .local v1, "permission":Ljava/lang/String;
    sget-object v6, Lbzg;->a:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 156
    const/4 v0, 0x1

    .line 161
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    array-length v4, p0

    if-gt v4, v3, :cond_0

    :cond_3
    move v2, v3

    .line 166
    goto :goto_0

    .line 154
    .restart local v1    # "permission":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
