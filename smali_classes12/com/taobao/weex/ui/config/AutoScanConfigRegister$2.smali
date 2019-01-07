.class final Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;
.super Ljava/lang/Object;
.source "AutoScanConfigRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->access$000()V

    .line 83
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/bridge/JavascriptInvokable;

    .line 84
    .local v1, "invokable":Lcom/taobao/weex/bridge/JavascriptInvokable;
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    :goto_0
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1}, Lcom/taobao/weex/bridge/JavascriptInvokable;->getMethods()[Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "invokable":Lcom/taobao/weex/bridge/JavascriptInvokable;
    check-cast v1, Lcom/taobao/weex/bridge/JavascriptInvokable;

    .line 88
    .restart local v1    # "invokable":Lcom/taobao/weex/bridge/JavascriptInvokable;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string/jumbo v2, "WeexScanConfigRegister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "auto preload class\'s methods count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method
