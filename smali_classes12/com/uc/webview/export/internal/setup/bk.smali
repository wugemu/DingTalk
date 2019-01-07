.class final Lcom/uc/webview/export/internal/setup/bk;
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
        "Lcom/uc/webview/export/internal/setup/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/p;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bi;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bi;Lcom/uc/webview/export/internal/setup/p;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

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
    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    const-string/jumbo v1, "load"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->callback(Ljava/lang/String;)V

    new-instance v0, Lcom/uc/webview/export/internal/setup/q;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/q;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/q;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/q;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/q;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/p;->mShellCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/q;->setSdkShellClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$b;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bl;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/bl;-><init>(Lcom/uc/webview/export/internal/setup/bk;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/q;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
