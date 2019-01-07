.class public final Lgwe;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 19
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.UCMobile"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 25
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v3

    const-string/jumbo v3, "share"

    const/4 v4, 0x0

    const-string/jumbo v5, "[ShareUtils] isUCwebInstalled Exception"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v0

    .line 35
    .local v0, "isCurrentUserOverseas":Z
    invoke-static {}, Lcms;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
