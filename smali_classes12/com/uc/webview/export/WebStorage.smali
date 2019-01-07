.class public Lcom/uc/webview/export/WebStorage;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/WebStorage$Origin;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/uc/webview/export/WebStorage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/IWebStorage;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    .line 124
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/WebStorage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 230
    const-class v2, Lcom/uc/webview/export/WebStorage;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    .line 233
    :cond_0
    sget-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/WebStorage;

    .line 234
    if-nez v0, :cond_1

    .line 235
    new-instance v1, Lcom/uc/webview/export/WebStorage;

    const/16 v0, 0x2720

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/WebStorage;-><init>(Lcom/uc/webview/export/internal/interfaces/IWebStorage;)V

    .line 236
    sget-object v0, Lcom/uc/webview/export/WebStorage;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 238
    :cond_1
    monitor-exit v2

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getInstance()Lcom/uc/webview/export/WebStorage;
    .locals 2

    .prologue
    .line 214
    const/16 v0, 0x2724

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/WebStorage;->a(I)Lcom/uc/webview/export/WebStorage;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/WebStorage;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/WebStorage;->a(I)Lcom/uc/webview/export/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->deleteAllData()V

    .line 205
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 148
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 172
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 160
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/IWebStorage;->setQuotaForOrigin(Ljava/lang/String;J)V

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WebStorage@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/WebStorage;->b:Lcom/uc/webview/export/internal/interfaces/IWebStorage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
