.class final Lcom/alipay/apmobilesecuritysdk/c/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/c/d;


# direct methods
.method public constructor <init>(Lcom/alipay/apmobilesecuritysdk/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/d;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/c/d;->a(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-static {v3}, Lcom/alipay/apmobilesecuritysdk/c/d;->b(Lcom/alipay/apmobilesecuritysdk/c/d;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/stun/StunClient;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/apmobilesecuritysdk/c/d;->a(Lcom/alipay/apmobilesecuritysdk/c/d;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/d;->c(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/d;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/c/d;->c(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/d;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/c/d$a;->a:Lcom/alipay/apmobilesecuritysdk/c/d;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/c/d;->c(Lcom/alipay/apmobilesecuritysdk/c/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/c/d;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
