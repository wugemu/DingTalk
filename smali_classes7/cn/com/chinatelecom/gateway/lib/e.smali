.class final Lcn/com/chinatelecom/gateway/lib/e;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:I

.field final synthetic c:Lcn/com/chinatelecom/gateway/lib/n$a;

.field final synthetic d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

.field final synthetic e:Lcn/com/chinatelecom/gateway/lib/a;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/a;Ljava/util/concurrent/Future;ILcn/com/chinatelecom/gateway/lib/n$a;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/e;->e:Lcn/com/chinatelecom/gateway/lib/a;

    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    iput p3, p0, Lcn/com/chinatelecom/gateway/lib/e;->b:I

    iput-object p4, p0, Lcn/com/chinatelecom/gateway/lib/e;->c:Lcn/com/chinatelecom/gateway/lib/n$a;

    iput-object p5, p0, Lcn/com/chinatelecom/gateway/lib/e;->d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    iget v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->b:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_1
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->c:Lcn/com/chinatelecom/gateway/lib/n$a;

    invoke-virtual {v1}, Lcn/com/chinatelecom/gateway/lib/n$a;->a()V

    .line 126
    instance-of v1, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v0, "{\"result\":-8003,\"msg\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_1
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 129
    :cond_1
    :try_start_2
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "submitOnTimeoutInterrupted other exception"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const-string/jumbo v0, "{\"result\":-8001,\"msg\":\"\u8bf7\u6c42\u5f02\u5e38\"}"

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->d:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/e;->a:Ljava/util/concurrent/Future;

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    throw v0
.end method
