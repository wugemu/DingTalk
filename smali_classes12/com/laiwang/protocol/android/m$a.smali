.class Lcom/laiwang/protocol/android/m$a;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/m;

.field private b:Lcom/laiwang/protocol/android/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/m;
    .param p2, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/laiwang/protocol/android/Reply",
            "<",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p3, "callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    .line 601
    const-string/jumbo v0, "lwp-account-reg"

    int-to-long v2, p2

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 602
    iput-object p3, p0, Lcom/laiwang/protocol/android/m$a;->b:Lcom/laiwang/protocol/android/Reply;

    .line 603
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/m$a;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/laiwang/protocol/android/m$a;->b:Lcom/laiwang/protocol/android/Reply;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 608
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/core/Request;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->s(Lcom/laiwang/protocol/android/m;)I

    move-result v7

    if-ne v7, v12, :cond_1

    .line 609
    :cond_0
    const-string/jumbo v7, "[LwpConn] conn authing"

    invoke-static {v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->s(Lcom/laiwang/protocol/android/m;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 615
    const-string/jumbo v7, "[LwpConn] conn authed"

    invoke-static {v7}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_2
    const-string/jumbo v7, "/reg"

    invoke-static {v7}, Lcom/laiwang/protocol/core/Request;->newRequest(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request;

    move-result-object v3

    .line 621
    .local v3, "request":Lcom/laiwang/protocol/core/Request;
    invoke-static {}, Lcom/laiwang/protocol/android/m;->m()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 622
    .local v2, "localToken":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v3, v7, v2}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 623
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->t(Lcom/laiwang/protocol/android/m;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 626
    const-string/jumbo v7, "subscribe"

    const-string/jumbo v8, "false"

    invoke-virtual {v3, v7, v8}, Lcom/laiwang/protocol/core/Request;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 628
    :cond_3
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7, v3}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)V

    .line 631
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->u(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/Extension;

    move-result-object v7

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/Extension;->authSyncContext()[B

    move-result-object v6

    .line 632
    .local v6, "syncContext":[B
    new-instance v5, Lcom/laiwang/protocol/android/at;

    invoke-direct {v5}, Lcom/laiwang/protocol/android/at;-><init>()V

    .line 633
    .local v5, "rpcRegModel":Lcom/laiwang/protocol/android/at;
    if-eqz v6, :cond_4

    array-length v7, v6

    if-lez v7, :cond_4

    .line 634
    iput-object v6, v5, Lcom/laiwang/protocol/android/at;->d:[B

    .line 637
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lcom/laiwang/protocol/android/at;->e:Ljava/lang/Integer;

    .line 639
    :try_start_0
    const-string/jumbo v7, "p"

    invoke-static {v7}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Ljac;->a(Ljava/lang/Object;Z)[B

    move-result-object v4

    .line 640
    .local v4, "result":[B
    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/core/Request;->payload([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v4    # "result":[B
    :goto_1
    new-instance v0, Lcom/laiwang/protocol/android/m$a$1;

    invoke-direct {v0, p0, v2}, Lcom/laiwang/protocol/android/m$a$1;-><init>(Lcom/laiwang/protocol/android/m$a;Ljava/lang/String;)V

    .line 711
    .local v0, "_callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    invoke-virtual {v3, v0}, Lcom/laiwang/protocol/core/Request;->setReply(Lcom/laiwang/protocol/android/Reply;)V

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/laiwang/protocol/core/Request;->setPendTime(J)V

    .line 713
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Request;)Lcom/laiwang/protocol/core/Request;

    .line 714
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7, v12}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I

    .line 715
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->d(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/bu;

    move-result-object v7

    iget-object v8, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v8}, Lcom/laiwang/protocol/android/m;->c(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m$b;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/laiwang/protocol/android/bu;->a(Lcom/laiwang/protocol/android/bu$a;)V

    .line 716
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v7

    iget-object v7, v7, Lcom/laiwang/protocol/android/j;->d:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/j$a;->a()V

    .line 717
    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v7, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/bd;)V

    .line 718
    const-string/jumbo v7, "send reg req %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/laiwang/protocol/core/Request;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 641
    .end local v0    # "_callback":Lcom/laiwang/protocol/android/Reply;, "Lcom/laiwang/protocol/android/Reply<Lcom/laiwang/protocol/core/Response;>;"
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "syncContext cast exception"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
