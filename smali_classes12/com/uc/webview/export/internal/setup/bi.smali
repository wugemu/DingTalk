.class final Lcom/uc/webview/export/internal/setup/bi;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bt;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bh;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bh;Lcom/uc/webview/export/internal/setup/bt;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    check-cast p1, Lcom/uc/webview/export/internal/setup/p;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    const-string/jumbo v1, "setup"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->callback(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getCurrentLoadClassTask()Lcom/uc/webview/export/internal/setup/u;

    move-result-object v0

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/u;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    const-string/jumbo v1, "setup_priority"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bj;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/bj;-><init>(Lcom/uc/webview/export/internal/setup/bi;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v0, Lcom/uc/webview/export/internal/setup/t;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/t;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/t;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/t;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/t;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/t;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/t;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/t;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/t;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bk;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/internal/setup/bk;-><init>(Lcom/uc/webview/export/internal/setup/bi;Lcom/uc/webview/export/internal/setup/p;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/t;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/t;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/t;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
