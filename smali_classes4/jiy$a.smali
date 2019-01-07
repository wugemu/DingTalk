.class final Ljiy$a;
.super Ljava/lang/Thread;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljiy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:J

.field final synthetic c:Ljiy;


# direct methods
.method private constructor <init>(Ljiy;)V
    .locals 1

    .prologue
    .line 769
    iput-object p1, p0, Ljiy$a;->c:Ljiy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 772
    const/4 v0, 0x0

    iput v0, p0, Ljiy$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Ljiy;B)V
    .locals 0
    .param p1, "x0"    # Ljiy;

    .prologue
    .line 769
    invoke-direct {p0, p1}, Ljiy$a;-><init>(Ljiy;)V

    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 777
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    if-eq v2, v5, :cond_8

    .line 778
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Network not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    if-eqz p1, :cond_2

    .line 783
    iput v6, p0, Ljiy$a;->a:I

    .line 785
    :cond_2
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " try connect, force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljiy$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    if-eq v2, v5, :cond_3

    iget v2, p0, Ljiy$a;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    .line 788
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2, v5}, Ljiy;->a(Ljiy;Z)Z

    .line 789
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " try connect fail 4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 791
    :cond_3
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 792
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    iget v2, v2, Ljiy;->a:I

    if-ne v2, v5, :cond_5

    iget v2, p0, Ljiy$a;->a:I

    if-nez v2, :cond_5

    .line 793
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " try connect in app, no sleep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    :goto_1
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Ljiy;->a(Ljiy;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    iget v2, p0, Ljiy$a;->a:I

    if-ne v2, v7, :cond_4

    .line 807
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->e(Ljiy;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v3

    invoke-interface {v3, v2}, Lka;->e(Ljava/lang/String;)V

    .line 811
    :cond_4
    sget-object v2, Lcom/taobao/accs/client/AccsConfig;->c:[[Ljava/lang/String;

    iget-object v3, p0, Ljiy$a;->c:Ljiy;

    iget-object v3, v3, Ljiy;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getMode(Landroid/content/Context;)I

    move-result v3

    aget-object v1, v2, v3

    .line 812
    .local v1, "ips":[Ljava/lang/String;
    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    iget v2, p0, Ljiy$a;->a:I

    if-ne v2, v7, :cond_6

    .line 813
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    aget-object v3, v1, v6

    invoke-static {v2, v3}, Ljiy;->b(Ljiy;Ljava/lang/String;)V

    .line 818
    :goto_2
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    iget v3, p0, Ljiy$a;->a:I

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRetryTimes(I)V

    .line 819
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    if-eq v2, v5, :cond_7

    .line 820
    iget v2, p0, Ljiy$a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljiy$a;->a:I

    .line 821
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " try connect fail, ready for reconnect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    invoke-direct {p0, v6}, Ljiy$a;->a(Z)V

    goto/16 :goto_0

    .line 795
    .end local v1    # "ips":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " try connect, need sleep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljiy$a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 815
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "ips":[Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljiy;->b(Ljiy;Ljava/lang/String;)V

    goto :goto_2

    .line 824
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljiy$a;->b:J

    goto/16 :goto_0

    .line 827
    .end local v1    # "ips":[Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljiy$a;->b:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    .line 829
    iput v6, p0, Ljiy$a;->a:I

    goto/16 :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 21

    .prologue
    .line 835
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NetworkThread run"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    const/16 v16, 0x0

    .line 837
    .local v16, "message":Lcom/taobao/accs/data/Message;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Ljiy$a;->a:I

    .line 838
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->f(Ljiy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 839
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "ready to get message"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 841
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 843
    :try_start_1
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v4, "no message, wait"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 850
    :cond_1
    :try_start_2
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v4, "try get message"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/taobao/accs/data/Message;

    move-object/from16 v16, v0

    .line 854
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 855
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 858
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->f(Ljiy;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 862
    if-eqz v16, :cond_0

    .line 864
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "send message not null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    const/16 v18, 0x1

    .line 871
    .local v18, "sendSucc":Z
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v20

    .line 872
    .local v20, "type":I
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " send:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v4}, Ljiy;->b(Ljiy;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget v2, v2, Ljiy;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 875
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "INAPP ping, skip"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 962
    :try_start_4
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 964
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 965
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 967
    :catch_0
    move-exception v19

    .line 968
    .local v19, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    .end local v18    # "sendSucc":Z
    .end local v19    # "t":Ljava/lang/Throwable;
    .end local v20    # "type":I
    :catch_1
    move-exception v14

    .line 846
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 847
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 974
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual {v2}, Ljiy;->i()V

    .line 975
    return-void

    .line 858
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 879
    .restart local v18    # "sendSucc":Z
    .restart local v20    # "type":I
    :cond_4
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v4}, Ljiy;->g(Ljiy;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget-object v4, v4, Ljiy;->b:Landroid/content/Context;

    invoke-static {v4}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v4

    invoke-virtual {v4}, Ljiv;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/taobao/accs/data/Message;->force:Z

    if-eqz v2, :cond_e

    .line 880
    :cond_5
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v6}, Ljiy;->g(Ljiy;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/taobao/accs/data/Message;->force:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy$a;->a(Z)V

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->h(Ljiy;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v4}, Ljiy;->g(Ljiy;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget-object v4, v4, Ljiy;->b:Landroid/content/Context;

    invoke-static {v4}, Ljiv;->a(Landroid/content/Context;)Ljiv;

    move-result-object v4

    invoke-virtual {v4}, Ljiv;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 884
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onSendPing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    .line 1652
    const-string/jumbo v3, "MessageHandler"

    const-string/jumbo v4, "onSendPing"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    const-class v3, Ljip;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1654
    const/4 v4, 0x1

    :try_start_a
    iput-boolean v4, v2, Ljip;->c:Z

    .line 1655
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 886
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->h(Ljiy;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onSendPing()V

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ljiy;->a(Ljiy;J)J

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Ljiy;->b(Ljiy;J)J

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual {v2}, Ljiy;->g()V

    .line 934
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljiy;->c(Ljiy;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 943
    if-nez v18, :cond_1b

    .line 945
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual {v2}, Ljiy;->i()V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string/jumbo v3, "send fail"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 949
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    .line 950
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "i":I
    :goto_2
    if-ltz v15, :cond_1a

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 952
    .local v17, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_8

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_9

    .line 954
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 950
    :cond_9
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 1655
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    :catchall_2
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 936
    .end local v20    # "type":I
    :catch_2
    move-exception v14

    .line 938
    .local v14, "e":Ljava/lang/Throwable;
    :try_start_10
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    const-string/jumbo v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Ljiy$a;->c:Ljiy;

    iget v8, v8, Ljiy;->a:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 940
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "service connection run"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v14, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 943
    if-nez v18, :cond_1d

    .line 945
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual {v2}, Ljiy;->i()V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string/jumbo v3, "send fail"

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 949
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    .line 950
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .restart local v15    # "i":I
    :goto_3
    if-ltz v15, :cond_1c

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 952
    .restart local v17    # "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x64

    if-eq v2, v4, :cond_b

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_c

    .line 954
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 950
    :cond_c
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 894
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    .restart local v20    # "type":I
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 897
    :cond_e
    const/4 v2, 0x0

    :try_start_13
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy$a;->a(Z)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_1

    .line 942
    .end local v20    # "type":I
    :catchall_3
    move-exception v2

    .line 943
    if-nez v18, :cond_1f

    .line 945
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual {v3}, Ljiy;->i()V

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 947
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->d(Ljiy;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v3

    const-string/jumbo v4, "send fail"

    invoke-virtual {v3, v4}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 949
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    .line 950
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v15, v3, -0x1

    .restart local v15    # "i":I
    :goto_4
    if-ltz v15, :cond_1e

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/taobao/accs/data/Message;

    .line 952
    .restart local v17    # "msg":Lcom/taobao/accs/data/Message;
    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x64

    if-eq v3, v5, :cond_10

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0xc9

    if-ne v3, v5, :cond_11

    .line 954
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    iget-object v3, v3, Ljiy;->c:Ljip;

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 950
    :cond_11
    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    .line 900
    .end local v15    # "i":I
    .end local v17    # "msg":Lcom/taobao/accs/data/Message;
    .restart local v20    # "type":I
    :cond_12
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_19

    .line 901
    const/4 v2, 0x1

    :try_start_16
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy$a;->a(Z)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->b(Ljiy;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->h(Ljiy;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    iget v3, v3, Ljiy;->a:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->build(Landroid/content/Context;I)[B

    move-result-object v7

    .line 904
    .local v7, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/taobao/accs/data/Message;->setSendTime(J)V

    .line 905
    array-length v2, v7

    const/16 v3, 0x4000

    if-le v2, v3, :cond_13

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_13

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    const/4 v3, -0x4

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .line 909
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->h(Ljiy;)Lorg/android/spdy/SpdySession;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-nez v7, :cond_16

    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {v2 .. v7}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 910
    const-string/jumbo v3, "NetworkThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " send data len:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v7, :cond_17

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " dataId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljip;->a(Lcom/taobao/accs/data/Message;)V

    .line 913
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v2, :cond_14

    .line 914
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sendCFrame end ack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "dataId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->e:Ljava/util/LinkedHashMap;

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getIntDataId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 919
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 921
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Ljiy;->a(Ljava/lang/String;J)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    iget-object v2, v2, Ljiy;->c:Ljip;

    new-instance v8, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lic;->j()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->e(Ljiy;)Ljava/lang/String;

    move-result-object v11

    array-length v3, v7

    int-to-long v12, v3

    invoke-direct/range {v8 .. v13}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v2, v8}, Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto/16 :goto_1

    .line 909
    :cond_16
    array-length v6, v7

    goto/16 :goto_5

    .line 910
    :cond_17
    array-length v2, v7

    goto/16 :goto_6

    .line 927
    .end local v7    # "data":[B
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 930
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljiy$a;->a(Z)V

    .line 931
    const/16 v18, 0x1

    .line 932
    const-string/jumbo v2, "NetworkThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Ljiy$a;->c:Ljiy;

    iget v4, v4, Ljiy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " skip msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto/16 :goto_1

    .line 958
    .restart local v15    # "i":I
    :cond_1a
    :try_start_17
    const-string/jumbo v2, "NetworkThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ljiy$a;->c:Ljiy;

    iget v5, v5, Ljiy;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network disconnected, wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 960
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "i":I
    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3

    .line 967
    :catch_3
    move-exception v19

    .line 968
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 962
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_1b
    :try_start_19
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3

    .line 964
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 965
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    throw v2
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3

    .line 958
    .end local v20    # "type":I
    .restart local v14    # "e":Ljava/lang/Throwable;
    .restart local v15    # "i":I
    :cond_1c
    :try_start_1c
    const-string/jumbo v2, "NetworkThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ljiy$a;->c:Ljiy;

    iget v5, v5, Ljiy;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network disconnected, wait"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 960
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "i":I
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :try_start_1d
    throw v2
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_4

    .line 967
    :catch_4
    move-exception v19

    .line 968
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, " run finally error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 962
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_1d
    :try_start_1e
    const-string/jumbo v2, "NetworkThread"

    const-string/jumbo v3, "send succ, remove it"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4

    .line 964
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v2}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 965
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    :try_start_20
    throw v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4

    .line 958
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v15    # "i":I
    :cond_1e
    :try_start_21
    const-string/jumbo v3, "NetworkThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Ljiy$a;->c:Ljiy;

    iget v6, v6, Ljiy;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " network disconnected, wait"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 960
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 969
    .end local v15    # "i":I
    :goto_7
    throw v2

    .line 960
    :catchall_8
    move-exception v3

    :try_start_22
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    :try_start_23
    throw v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_5

    .line 967
    :catch_5
    move-exception v19

    .line 968
    .restart local v19    # "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "NetworkThread"

    const-string/jumbo v4, " run finally error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 962
    .end local v19    # "t":Ljava/lang/Throwable;
    :cond_1f
    :try_start_24
    const-string/jumbo v3, "NetworkThread"

    const-string/jumbo v4, "send succ, remove it"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_5

    .line 964
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, Ljiy$a;->c:Ljiy;

    invoke-static {v3}, Ljiy;->a(Ljiy;)Ljava/util/LinkedList;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 965
    monitor-exit v4

    goto :goto_7

    :catchall_9
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :try_start_26
    throw v3
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_5
.end method
