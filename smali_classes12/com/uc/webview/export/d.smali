.class final Lcom/uc/webview/export/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:[Ljava/lang/Class;

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/uc/webview/export/d;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/uc/webview/export/d;->b:[Ljava/lang/Class;

    iput-object p3, p0, Lcom/uc/webview/export/d;->c:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/uc/webview/export/d;->d:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2284
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/d;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/uc/webview/export/d;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2286
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2287
    new-instance v2, Lcom/uc/webview/export/e;

    invoke-direct {v2, p0, v0}, Lcom/uc/webview/export/e;-><init>(Lcom/uc/webview/export/d;Ljava/lang/reflect/Constructor;)V

    .line 2299
    const/16 v0, 0x2742

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2301
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    .line 2302
    if-nez v0, :cond_0

    .line 2303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "coreType is not valid. init maybe failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    iget-object v1, p0, Lcom/uc/webview/export/d;->d:Landroid/webkit/ValueCallback;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2311
    :goto_0
    return-void

    .line 2307
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
