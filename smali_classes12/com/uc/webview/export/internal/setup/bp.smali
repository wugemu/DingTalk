.class public final Lcom/uc/webview/export/internal/setup/bp;
.super Lcom/uc/webview/export/internal/setup/p;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 21
    const-string/jumbo v0, "dexFilePath"

    invoke-virtual {p0, v0, v12}, Lcom/uc/webview/export/internal/setup/bp;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 23
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bp;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 24
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bp;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 26
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc7

    const-string/jumbo v2, "1 UCMPackage expected for thick mode."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bp;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "VERIFY_POLICY"

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 34
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 35
    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/bp;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 38
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 39
    new-instance v2, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 40
    const-class v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v1, v0, v5, v8}, Lcom/uc/webview/export/internal/setup/bp;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 41
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v8

    add-long/2addr v8, v6

    .line 42
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 46
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 48
    const-class v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v1, v0, v5, v10}, Lcom/uc/webview/export/internal/setup/bp;->b(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    .line 49
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 50
    invoke-virtual {v2}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v0

    add-long/2addr v6, v0

    .line 53
    :cond_1
    const-string/jumbo v2, "sdk_vrf"

    const-string/jumbo v5, "thick"

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/uc/webview/export/internal/setup/bp;->a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V

    .line 55
    const-class v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bp;->mCL:Ljava/lang/ClassLoader;

    .line 56
    iput-boolean v3, p0, Lcom/uc/webview/export/internal/setup/bp;->a:Z

    .line 57
    iput-boolean v3, p0, Lcom/uc/webview/export/internal/setup/bp;->b:Z

    .line 59
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "sdk_stp_s"

    invoke-direct {v0, v1, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/bp;->callbackStat(Landroid/util/Pair;)V

    .line 60
    return-void

    :cond_2
    move-wide v8, v6

    goto :goto_0
.end method
