.class final Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;
.super Ljava/lang/Object;
.source "LoginServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->logout(Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;


# direct methods
.method constructor <init>(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->c(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->d(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->b(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;Z)Z

    .line 388
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->e(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)V

    .line 389
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    .line 390
    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->a(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 391
    .local v0, "localBroadcastManager":Ldq;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.mybank.login.ACTION_LOGIN_OUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v3, "loginOutIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Ldq;->a(Landroid/content/Intent;)Z

    .line 396
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/login/LoginCallback;

    .line 397
    .local v1, "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Lcom/mybank/android/phone/common/service/login/LoginCallback;->callback(Z)V

    goto :goto_1

    .line 399
    .end local v1    # "loginCallBack":Lcom/mybank/android/phone/common/service/login/LoginCallback;
    :cond_1
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->f(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 402
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->g(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;

    .line 403
    .local v2, "loginOutCallback":Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;
    invoke-interface {v2}, Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;->onLoginOut()V

    goto :goto_2

    .line 405
    .end local v2    # "loginOutCallback":Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;
    :cond_2
    iget-object v4, p0, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl$4;->a:Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;->g(Lcom/mybank/android/phone/common/service/impl/LoginServiceImpl;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_0
.end method
