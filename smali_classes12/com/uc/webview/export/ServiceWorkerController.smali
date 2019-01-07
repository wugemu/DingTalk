.class public Lcom/uc/webview/export/ServiceWorkerController;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/uc/webview/export/ServiceWorkerController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    .line 32
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/ServiceWorkerController;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 65
    const-class v2, Lcom/uc/webview/export/ServiceWorkerController;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    .line 68
    :cond_0
    sget-object v0, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/ServiceWorkerController;

    .line 69
    if-nez v0, :cond_1

    .line 70
    new-instance v1, Lcom/uc/webview/export/ServiceWorkerController;

    const/16 v0, 0x2746

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 70
    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/ServiceWorkerController;-><init>(Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;)V

    .line 72
    sget-object v0, Lcom/uc/webview/export/ServiceWorkerController;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 74
    :cond_1
    monitor-exit v2

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getInstance()Lcom/uc/webview/export/ServiceWorkerController;
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0x2724

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/ServiceWorkerController;->a(I)Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/ServiceWorkerController;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/ServiceWorkerController;->a(I)Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string/jumbo v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceWorkerWebSettings()Lcom/uc/webview/export/ServiceWorkerWebSettings;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;->getServiceWorkerWebSettings()Lcom/uc/webview/export/ServiceWorkerWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/ServiceWorkerController;->b:Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V

    .line 83
    return-void
.end method
