.class Lcom/laiwang/protocol/android/m$a$1;
.super Ljava/lang/Object;
.source "LwpConnection.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Reply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/m$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/laiwang/protocol/android/Reply",
        "<",
        "Lcom/laiwang/protocol/core/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/laiwang/protocol/android/m$a;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/m$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laiwang/protocol/android/m$a;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iput-object p2, p0, Lcom/laiwang/protocol/android/m$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/core/Response;)V
    .locals 10
    .param p1, "response"    # Lcom/laiwang/protocol/core/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 649
    :try_start_0
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->t(Lcom/laiwang/protocol/android/m;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    const-string/jumbo v4, "reg-uid"

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Response;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    const-string/jumbo v4, "reg-uid"

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 653
    sput-object v4, Lcom/laiwang/protocol/Config;->d:Ljava/lang/String;

    sput-object v4, Lcom/laiwang/protocol/Config;->_UID:Ljava/lang/String;

    .line 654
    const-string/jumbo v4, "l_u"

    sget-object v5, Lcom/laiwang/protocol/Config;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/cg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v4, "[LwpConn] save uid %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/laiwang/protocol/Config;->_UID:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_0
    sget-object v4, Lcom/laiwang/protocol/Config;->d:Ljava/lang/String;

    const-string/jumbo v5, "real-ip"

    invoke-virtual {p1, v5}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v6, v6, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v6

    invoke-interface {v6}, Lcom/laiwang/protocol/android/aa;->c()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/laiwang/protocol/android/log/PerfLogger;->logRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_1
    const-string/jumbo v4, "real-ip"

    invoke-virtual {p1, v4}, Lcom/laiwang/protocol/core/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "realIp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 661
    const-string/jumbo v4, "client ip is %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :cond_2
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v4

    iget-object v4, v4, Lcom/laiwang/protocol/android/j;->d:Lcom/laiwang/protocol/android/j$a;

    invoke-virtual {v4}, Lcom/laiwang/protocol/android/j$a;->b()V

    .line 664
    invoke-virtual {p1}, Lcom/laiwang/protocol/core/Response;->status()Lcom/laiwang/protocol/core/Constants$Status;

    move-result-object v3

    .line 665
    .local v3, "respStatus":Lcom/laiwang/protocol/core/Constants$Status;
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->OK:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v3, v4, :cond_5

    .line 666
    const-string/jumbo v4, "[LwpConn] reg succ >> %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v7, v7, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v7

    invoke-interface {v7}, Lcom/laiwang/protocol/android/aa;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 668
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4, p1}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/core/Response;)V

    .line 669
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    sget-object v5, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 670
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I

    .line 671
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 672
    .local v1, "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_3

    .line 673
    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v5, v5, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/android/m$e;->f(Lcom/laiwang/protocol/android/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 706
    .end local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    .end local v2    # "realIp":Ljava/lang/String;
    .end local v3    # "respStatus":Lcom/laiwang/protocol/core/Constants$Status;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v5}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 707
    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v5}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    :cond_4
    throw v4

    .line 675
    .restart local v2    # "realIp":Ljava/lang/String;
    .restart local v3    # "respStatus":Lcom/laiwang/protocol/core/Constants$Status;
    :cond_5
    :try_start_1
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->UNAUTHORIZED:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v3, v4, :cond_7

    .line 676
    const-string/jumbo v4, "[LwpConn] reg inval >> %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v7, v7, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v7}, Lcom/laiwang/protocol/android/m;->h(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/aa;

    move-result-object v7

    invoke-interface {v7}, Lcom/laiwang/protocol/android/aa;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 678
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    sget-object v5, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/k$d;)Lcom/laiwang/protocol/android/k$d;

    .line 679
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I

    .line 680
    invoke-static {}, Lcom/laiwang/protocol/android/m;->m()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 681
    .local v0, "accountIsInval":Z
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->i(Lcom/laiwang/protocol/android/m;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/protocol/android/m$e;

    .line 682
    .restart local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    if-eqz v1, :cond_6

    .line 683
    if-eqz v0, :cond_6

    .line 684
    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v5, v5, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v1, v5}, Lcom/laiwang/protocol/android/m$e;->g(Lcom/laiwang/protocol/android/k;)V

    goto :goto_1

    .line 687
    .end local v0    # "accountIsInval":Z
    .end local v1    # "listener":Lcom/laiwang/protocol/android/m$e;
    :cond_7
    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->TRY_LATER:Lcom/laiwang/protocol/core/Constants$Status;

    if-eq v3, v4, :cond_8

    sget-object v4, Lcom/laiwang/protocol/core/Constants$Status;->INTERNAL_SERVER_ERROR:Lcom/laiwang/protocol/core/Constants$Status;

    if-ne v3, v4, :cond_c

    .line 688
    :cond_8
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 689
    const-string/jumbo v4, "[LwpConn] reg server resp try later"

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 690
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I

    .line 691
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-wide v4, v4, Lcom/laiwang/protocol/android/m$a;->delay:J

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 692
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    sget-object v5, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 707
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    .line 709
    :cond_9
    :goto_2
    return-void

    .line 695
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-wide v6, v4, Lcom/laiwang/protocol/android/m$a;->delay:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/laiwang/protocol/android/m$a;->delay:J

    .line 696
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    iget-object v5, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-wide v6, v5, Lcom/laiwang/protocol/android/m$a;->delay:J

    long-to-int v5, v6

    iget-object v6, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v6}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;ILcom/laiwang/protocol/android/Reply;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 707
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m$a;->a(Lcom/laiwang/protocol/android/m$a;)Lcom/laiwang/protocol/android/Reply;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/laiwang/protocol/android/Reply;->on(Ljava/lang/Object;)V

    goto :goto_2

    .line 697
    :cond_c
    :try_start_3
    iget v4, v3, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_d

    .line 698
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    invoke-static {v4}, Lcom/laiwang/protocol/android/m;->k(Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/j;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/j;->a(Z)V

    .line 699
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I

    .line 700
    const-string/jumbo v4, "[LwpConn] reg 400"

    invoke-static {v4}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 701
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    sget-object v5, Lcom/laiwang/protocol/android/ab;->j:Lcom/laiwang/protocol/android/ab$g;

    invoke-virtual {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 703
    :cond_d
    iget-object v4, p0, Lcom/laiwang/protocol/android/m$a$1;->b:Lcom/laiwang/protocol/android/m$a;

    iget-object v4, v4, Lcom/laiwang/protocol/android/m$a;->a:Lcom/laiwang/protocol/android/m;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/m;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public synthetic on(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 645
    check-cast p1, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {p0, p1}, Lcom/laiwang/protocol/android/m$a$1;->a(Lcom/laiwang/protocol/core/Response;)V

    return-void
.end method
