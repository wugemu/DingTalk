.class public final Lkeo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkeo$a;
    }
.end annotation


# instance fields
.field public a:Z

.field b:I

.field c:J

.field private d:Ljava/lang/String;

.field private e:Lken;

.field private f:Ljvp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkeo;->a:Z

    .line 1000
    invoke-static {}, Ljvp$a;->a()Ljvp;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lkeo;->f:Ljvp;

    return-void
.end method

.method private a(I)Lcom/xiaomi/push/thrift/c;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/xiaomi/push/thrift/c;

    iget-object v0, p0, Lkeo;->d:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/xiaomi/push/thrift/c;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lkeo;->e:Lken;

    iget-object v0, v0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljvn;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkeo;->e:Lken;

    iget-object v0, v0, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Ljul;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/push/thrift/c;->a(Ljava/lang/String;)Lcom/xiaomi/push/thrift/c;

    :cond_0
    new-instance v4, Lktp;

    invoke-direct {v4, p1}, Lktp;-><init>(I)V

    new-instance v0, Lorg/apache/thrift/protocol/k$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/k$a;-><init>()V

    invoke-virtual {v0, v4}, Lorg/apache/thrift/protocol/k$a;->a(Lktr;)Lktk;

    move-result-object v5

    :try_start_0
    invoke-virtual {v3, v5}, Lcom/xiaomi/push/thrift/c;->b(Lktk;)V
    :try_end_0
    .catch Lorg/apache/thrift/f; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lkeo;->f:Ljvp;

    invoke-virtual {v0}, Ljvp;->b()Ljava/util/LinkedList;

    move-result-object v6

    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvp$a;

    .line 4000
    const/4 v1, 0x0

    iget v7, v0, Ljvp$a;->a:I

    if-nez v7, :cond_4

    iget-object v7, v0, Ljvp$a;->c:Ljava/lang/Object;

    instance-of v7, v7, Lcom/xiaomi/push/thrift/b;

    if-eqz v7, :cond_5

    iget-object v0, v0, Ljvp$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/thrift/b;

    .line 0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/thrift/b;->b(Lktk;)V

    .line 5000
    :cond_1
    iget-object v1, v4, Lktp;->a:Lkte;

    invoke-virtual {v1}, Lkte;->size()I

    move-result v1

    .line 0
    if-gt v1, p1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :goto_3
    return-object v3

    .line 4000
    :cond_4
    invoke-virtual {p0}, Lkeo;->c()Lcom/xiaomi/push/thrift/b;

    move-result-object v1

    sget-object v7, Lcom/xiaomi/push/thrift/a;->ac:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v7}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/xiaomi/push/thrift/b;->a(I)Lcom/xiaomi/push/thrift/b;

    iget v7, v0, Ljvp$a;->a:I

    invoke-virtual {v1, v7}, Lcom/xiaomi/push/thrift/b;->c(I)Lcom/xiaomi/push/thrift/b;

    iget-object v0, v0, Ljvp$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/thrift/b;->c(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/thrift/f; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static a()Lken;
    .locals 2

    sget-object v1, Lkeo$a;->a:Lkeo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkeo$a;->a:Lkeo;

    iget-object v0, v0, Lkeo;->e:Lken;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lken;

    invoke-direct {v0, p1}, Lken;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lkeo;->e:Lken;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkeo;->d:Ljava/lang/String;

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v0

    new-instance v1, Lkep;

    invoke-direct {v1, p0}, Lkep;-><init>(Lkeo;)V

    invoke-virtual {v0, v1}, Lkbd;->a(Lkbd$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/xiaomi/push/thrift/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkeo;->f:Ljvp;

    invoke-virtual {v0, p1}, Ljvp;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Lcom/xiaomi/push/thrift/c;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    .line 3000
    :try_start_0
    iget-boolean v2, p0, Lkeo;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lkeo;->c:J

    sub-long/2addr v2, v4

    iget v4, p0, Lkeo;->b:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkeo;->a:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lkeo;->c:J

    .line 2000
    :cond_0
    iget-boolean v2, p0, Lkeo;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkeo;->f:Ljvp;

    invoke-virtual {v2}, Ljvp;->a()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 0
    :cond_1
    if-eqz v1, :cond_3

    const/16 v0, 0x2ee

    iget-object v1, p0, Lkeo;->e:Lken;

    iget-object v1, v1, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x177

    :cond_2
    invoke-direct {p0, v0}, Lkeo;->a(I)Lcom/xiaomi/push/thrift/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Lcom/xiaomi/push/thrift/b;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/thrift/b;

    invoke-direct {v0}, Lcom/xiaomi/push/thrift/b;-><init>()V

    iget-object v1, p0, Lkeo;->e:Lken;

    iget-object v1, v1, Lken;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Ljvn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->a(Ljava/lang/String;)Lcom/xiaomi/push/thrift/b;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/thrift/b;->a:B

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/thrift/b;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->d(I)Lcom/xiaomi/push/thrift/b;

    iget-object v1, p0, Lkeo;->e:Lken;

    iget-object v1, v1, Lken;->b:Lkde;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkeo;->e:Lken;

    iget-object v1, v1, Lken;->b:Lkde;

    invoke-virtual {v1}, Lkde;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/thrift/b;->e(I)Lcom/xiaomi/push/thrift/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
