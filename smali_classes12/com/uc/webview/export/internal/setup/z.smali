.class public final Lcom/uc/webview/export/internal/setup/z;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/z;",
        "Lcom/uc/webview/export/internal/setup/z;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Z

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/webview/export/internal/setup/z;->a:Z

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/z;)Lcom/uc/webview/export/internal/interfaces/IWebView;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    const-string/jumbo v0, "PrecreateWebViewTask"

    const-string/jumbo v1, "createUCWebView"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/z;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-array v1, v5, [I

    const/16 v2, 0x271c

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v6, v3, v5

    const/4 v0, 0x2

    aput-object v6, v3, v0

    const/4 v0, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebView;

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 23
    sget-object v1, Lcom/uc/webview/export/internal/setup/z;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/uc/webview/export/internal/setup/z;->a:Z

    .line 25
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 28
    sget-object v1, Lcom/uc/webview/export/internal/setup/z;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-boolean v2, Lcom/uc/webview/export/internal/setup/z;->a:Z

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    const-string/jumbo v0, "PrecreateWebViewTask"

    const-string/jumbo v1, "run --begin--"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/uc/webview/export/internal/setup/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 47
    :cond_0
    const/16 v0, 0x272b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/uc/webview/export/internal/setup/aa;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/setup/aa;-><init>(Lcom/uc/webview/export/internal/setup/z;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
