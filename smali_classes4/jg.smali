.class Ljg;
.super Lje;
.source "FailOverHandler.java"


# instance fields
.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lje;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljg;->c:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljg;->d:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "now":J
    iget-object v4, p0, Ljg;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 64
    :try_start_0
    iget-object v3, p0, Ljg;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 66
    .local v2, "pre":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0xea60

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 67
    :cond_0
    iget-object v3, p0, Ljg;->d:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v3

    invoke-interface {v3, p1}, Lka;->e(Ljava/lang/String;)V

    .line 70
    :cond_1
    monitor-exit v4

    return-void

    .end local v2    # "pre":Ljava/lang/Long;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method protected final varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "param"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 26
    if-nez p1, :cond_5

    .line 27
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1036
    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const-string/jumbo v1, "awcn.FailOverHandler"

    const-string/jumbo v2, "FailOverHandler hook onResponseCode"

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    :cond_0
    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4

    const/16 v1, 0x258

    if-ge v0, v1, :cond_4

    .line 1040
    iget-object v1, p0, Ljg;->c:Ljava/util/List;

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 1042
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    :goto_1
    sget-object v0, Ljg;->a:Ljava/lang/Object;

    :goto_2
    return-object v0

    .line 1044
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1046
    sub-long v2, v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v0, v2, v6

    if-gtz v0, :cond_3

    .line 1047
    invoke-static {}, Lkg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljg;->a(Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1053
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1050
    :cond_3
    :try_start_2
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1055
    :cond_4
    iget-object v1, p0, Ljg;->c:Ljava/util/List;

    monitor-enter v1

    .line 1056
    :try_start_3
    iget-object v0, p0, Ljg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1057
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 28
    :cond_5
    if-ne p1, v1, :cond_1

    .line 29
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljg;->a(Ljava/lang/String;)V

    .line 30
    sget-object v0, Ljg;->b:Ljava/lang/Object;

    goto :goto_2
.end method
