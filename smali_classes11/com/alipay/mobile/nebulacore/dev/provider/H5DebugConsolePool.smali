.class public Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;
.super Ljava/lang/Object;
.source "H5DebugConsolePool.java"


# static fields
.field private static instance:Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;


# instance fields
.field private mapViewToConsole:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->instance:Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->mapViewToConsole:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->instance:Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->instance:Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->instance:Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;

    return-object v0
.end method


# virtual methods
.method public addOrGetConsole(Liop;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .locals 5
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    invoke-static {p1}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Liop;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "viewId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->mapViewToConsole:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 30
    .local v1, "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    if-nez v1, :cond_0

    .line 31
    invoke-interface {p1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 32
    .local v0, "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    invoke-interface {p1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 33
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .end local v1    # "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/content/Context;)V

    .line 34
    .restart local v1    # "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->mapViewToConsole:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "apWebView":Lcom/alipay/mobile/nebula/webview/APWebView;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    return-object v1
.end method

.method public getConsole(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->mapViewToConsole:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    return-object v0
.end method

.method public release(Ljava/lang/String;)V
    .locals 2
    .param p1, "viewId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DebugConsolePool;->mapViewToConsole:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .line 46
    .local v0, "console":Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->release()V

    .line 49
    :cond_0
    return-void
.end method
