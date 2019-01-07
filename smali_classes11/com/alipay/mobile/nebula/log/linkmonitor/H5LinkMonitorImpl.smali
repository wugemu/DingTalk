.class public Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;
.super Ljava/lang/Object;
.source "H5LinkMonitorImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LinkMonitorImpl"


# instance fields
.field private handler:Landroid/os/Handler;

.field private linkCompleted:Z

.field private linkMonitorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handleCheckExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    return-void
.end method

.method private handleCheckExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 14
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    iget-object v5, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 135
    .local v2, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-nez v2, :cond_1

    .line 136
    const-string/jumbo v5, "H5LinkMonitorImpl"

    const-string/jumbo v10, "linkMonitorTree == null"

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-eqz p4, :cond_2

    .line 140
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;->checkExpectation(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;)V

    goto :goto_0

    .line 143
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v3

    .line 144
    .local v3, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v3, :cond_0

    .line 146
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v8

    .line 148
    .local v8, "triggerTime":J
    const-wide/16 v6, 0x0

    .line 149
    .local v6, "parentTriggerTime":J
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getParentNode()Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v4

    .line 150
    .local v4, "parentNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v4, :cond_3

    .line 151
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v6

    .line 154
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    sub-long v10, v8, v6

    move/from16 v0, p3

    int-to-long v12, v0

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    .line 155
    const-string/jumbo v5, "H5LinkMonitorImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "checkExpectation nodeName : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " triggerTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " parentNodeName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 156
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " parentNodeTrigger : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, p1, v0, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->logExpectationFail(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public addLinkMonitorTree(Ljava/lang/String;)V
    .locals 3
    .param p1, "linkId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "H5LinkMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " linkMonitorMap already contains : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    new-instance v1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelExpectation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 188
    .local v0, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-nez v0, :cond_1

    .line 189
    const-string/jumbo v2, "H5LinkMonitorImpl"

    const-string/jumbo v3, "linkMonitorTree == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v1

    .line 193
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancelLinkMonitor(Ljava/lang/String;)V
    .locals 5
    .param p1, "linkId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->getLinkById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    move-result-object v0

    .line 202
    .local v0, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 205
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getCheckRunnable()Ljava/lang/Runnable;

    move-result-object v2

    .line 206
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 207
    iget-object v4, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 212
    .end local v1    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method public checkExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 6
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    new-instance v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$2;-><init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 130
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "depend"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z

    move-result v0

    return v0
.end method

.method public createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z
    .locals 14
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "depend"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "listener"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const-string/jumbo v3, "H5LinkMonitorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createExpectation linkId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " nodeName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " depend : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timeout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 92
    .local v12, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-nez v12, :cond_0

    .line 93
    const-string/jumbo v3, "H5LinkMonitorImpl"

    const-string/jumbo v4, "linkMonitorTree == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x0

    .line 118
    :goto_0
    return v3

    .line 96
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->containsNode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string/jumbo v3, "H5LinkMonitorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "linkMonitorTree already contain : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    :cond_1
    new-instance v13, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;-><init>()V

    .line 101
    .local v13, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setNodeName(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->addNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Ljava/lang/String;)V

    .line 104
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v9

    .line 105
    .local v9, "dependNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v9, :cond_2

    .line 106
    invoke-virtual {v9}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v10

    .line 107
    .local v10, "dependTrigger":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    long-to-int v3, v4

    sub-int v8, p4, v3

    .line 109
    .local v8, "checkT":I
    new-instance v2, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;-><init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 115
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v13, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setCheckRunnable(Ljava/lang/Runnable;)V

    .line 116
    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->handler:Landroid/os/Handler;

    int-to-long v4, v8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v8    # "checkT":I
    .end local v10    # "dependTrigger":J
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "triggerTime"    # J

    .prologue
    .line 166
    const-string/jumbo v2, "H5LinkMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fulfillExpectation linkId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nodeName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " triggerTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 169
    .local v0, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-nez v0, :cond_1

    .line 170
    const-string/jumbo v2, "H5LinkMonitorImpl"

    const-string/jumbo v3, "linkMonitorTree == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 176
    const-string/jumbo v2, "H5LinkMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already trigger"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v1

    .line 180
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setTriggerTime(J)V

    goto :goto_0
.end method

.method public getLinkById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    .locals 1
    .param p1, "linkId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    return-object v0
.end method

.method public getLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "linkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 33
    .local v0, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkCompleted()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "H5LinkMonitorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "linkCompleted : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    return v0
.end method

.method public setLinkCompleted(Z)V
    .locals 0
    .param p1, "completed"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkCompleted:Z

    .line 64
    return-void
.end method

.method public setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "triggerTime"    # J
    .param p5, "parentName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v2, "H5LinkMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setLinkData linkId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " nodeName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " triggerTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " parentName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->linkMonitorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .line 71
    .local v0, "linkMonitorTree":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
    if-nez v0, :cond_0

    .line 72
    const-string/jumbo v2, "H5LinkMonitorImpl"

    const-string/jumbo v3, "linkMonitorTree == null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;-><init>()V

    .line 76
    .local v1, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setNodeName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p3, p4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setTriggerTime(J)V

    .line 78
    invoke-virtual {v0, v1, p5}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->addNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Ljava/lang/String;)V

    goto :goto_0
.end method
