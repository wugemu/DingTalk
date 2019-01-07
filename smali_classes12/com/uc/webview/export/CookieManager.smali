.class public Lcom/uc/webview/export/CookieManager;
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
            "Lcom/uc/webview/export/CookieManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;


# direct methods
.method private constructor <init>(Lcom/uc/webview/export/internal/interfaces/ICookieManager;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    .line 30
    return-void
.end method

.method private static declared-synchronized a(I)Lcom/uc/webview/export/CookieManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 62
    const-class v2, Lcom/uc/webview/export/CookieManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    .line 65
    :cond_0
    sget-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/CookieManager;

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v1, Lcom/uc/webview/export/CookieManager;

    const/16 v0, 0x2721

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/CookieManager;-><init>(Lcom/uc/webview/export/internal/interfaces/ICookieManager;)V

    .line 68
    sget-object v0, Lcom/uc/webview/export/CookieManager;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 70
    :cond_1
    monitor-exit v2

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static allowFileSchemeCookies()Z
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/uc/webview/export/CookieManager;
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0x2724

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/CookieManager;->a(I)Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/uc/webview/export/WebView;)Lcom/uc/webview/export/CookieManager;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/uc/webview/export/WebView;->getCurrentViewCoreType()I

    move-result v0

    invoke-static {v0}, Lcom/uc/webview/export/CookieManager;->a(I)Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    .line 243
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method public acceptThirdPartyCookies(Lcom/uc/webview/export/WebView;)Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->acceptThirdPartyCookies(Lcom/uc/webview/export/WebView;)Z

    move-result v0

    return v0
.end method

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
    .line 34
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string/jumbo v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->flush()V

    .line 263
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCookies()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->hasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeAllCookie()V

    .line 139
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 281
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeSessionCookie()V

    .line 131
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 300
    return-void
.end method

.method public setAcceptCookie(Z)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setAcceptCookie(Z)V

    .line 83
    return-void
.end method

.method public setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setAcceptThirdPartyCookies(Lcom/uc/webview/export/WebView;Z)V

    .line 192
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/interfaces/ICookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CookieManager@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/CookieManager;->b:Lcom/uc/webview/export/internal/interfaces/ICookieManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
