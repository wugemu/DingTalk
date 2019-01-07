.class public final Lcom/uc/webview/export/internal/setup/au;
.super Lcom/uc/webview/export/internal/setup/UCSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/au;",
        "Lcom/uc/webview/export/internal/setup/au;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/uc/webview/export/internal/setup/s;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    new-instance v1, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    .line 78
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {v1, p0}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 80
    :cond_0
    const-string/jumbo v0, "ucmLibDir"

    .line 81
    invoke-virtual {v1, v0, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v2, "ucmZipDir"

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 84
    return-object v1
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 20
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 21
    const-string/jumbo v1, "ucmZipFile"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    const-string/jumbo v2, "stat"

    invoke-virtual {p0, v2}, Lcom/uc/webview/export/internal/setup/au;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 24
    const/16 v3, 0x2713

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v0, v3, v1}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;->checkNeedDecompress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v3, Lcom/uc/webview/export/internal/setup/k;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/k;-><init>()V

    const/16 v4, 0x2711

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    .line 34
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v4, "CONTEXT"

    .line 35
    invoke-virtual {v3, v4, v0}, Lcom/uc/webview/export/internal/setup/k;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v4, "stat"

    new-instance v5, Lcom/uc/webview/export/internal/setup/ay;

    invoke-direct {v5, p0, v2}, Lcom/uc/webview/export/internal/setup/ay;-><init>(Lcom/uc/webview/export/internal/setup/au;Landroid/webkit/ValueCallback;)V

    .line 36
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v3

    check-cast v3, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v4, "success"

    new-instance v5, Lcom/uc/webview/export/internal/setup/av;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/uc/webview/export/internal/setup/av;-><init>(Lcom/uc/webview/export/internal/setup/au;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/internal/setup/k;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/k;

    .line 72
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/k;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    goto :goto_0
.end method
