.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;
.super Ljava/lang/Object;
.source "H5PatchProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PatchProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PatchProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableCheckNewFileExists()Z
    .locals 3

    .prologue
    .line 50
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 51
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v2, "h5_enableCheckNewFileExists"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 57
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static enableSyncPatcher()Z
    .locals 3

    .prologue
    .line 39
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 40
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v2, "h5_patcherDirSync"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x0

    .line 46
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized patcherDirSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileFolder"    # Ljava/lang/String;
    .param p3, "oldFileFolder"    # Ljava/lang/String;
    .param p4, "patchFilePath"    # Ljava/lang/String;
    .param p5, "oldFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->enableCheckNewFileExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "H5PatchProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "newFileFolder : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exists, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newFileFolder"    # Ljava/lang/String;
    .param p3, "oldFileFolder"    # Ljava/lang/String;
    .param p4, "patchFilePath"    # Ljava/lang/String;
    .param p5, "oldFileMD5"    # Ljava/lang/String;
    .param p6, "patchFileMD5"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->enableSyncPatcher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/nebulaappproxy/provider/H5PatchProviderImpl;->patcherDirSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/alipay/mobile/nebulaappproxy/patch/BasePatcher;->patcherDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
