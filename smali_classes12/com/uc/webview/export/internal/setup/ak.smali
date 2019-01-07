.class final Lcom/uc/webview/export/internal/setup/ak;
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
        "Lcom/uc/webview/export/internal/setup/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/ae;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/ae;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

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
    .line 333
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->y:Landroid/webkit/ValueCallback;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0, p1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/ae;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;

    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/ae;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "delete_core"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, p1, Lcom/uc/webview/export/internal/setup/bh;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0x3f0

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_7

    :cond_2
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0x3f3

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_7

    :cond_3
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xbbf

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    :cond_4
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_7

    :cond_5
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    const/16 v2, 0xfa5

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ae;->f(Lcom/uc/webview/export/internal/setup/ae;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->a(Lcom/uc/webview/export/internal/setup/ae;Ljava/util/List;)Ljava/util/List;

    :cond_8
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ae;->f(Lcom/uc/webview/export/internal/setup/ae;)Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/uc/webview/export/internal/setup/bh;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string/jumbo v0, "SdkSetupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mExceptionCB mExceptionTasks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Lcom/uc/webview/export/internal/setup/ae;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    :goto_0
    return-void

    :cond_a
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ae;->g(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ae;->g(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "success"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/ae;->l(Lcom/uc/webview/export/internal/setup/ae;)Landroid/webkit/ValueCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "exception"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/ae;->k(Lcom/uc/webview/export/internal/setup/ae;)Landroid/webkit/ValueCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ae;->h(Lcom/uc/webview/export/internal/setup/ae;)Lcom/uc/webview/export/internal/setup/s;

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ak;->a:Lcom/uc/webview/export/internal/setup/ae;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ae;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0
.end method
