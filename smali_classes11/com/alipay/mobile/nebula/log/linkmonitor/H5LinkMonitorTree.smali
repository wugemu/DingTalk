.class public Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
.super Ljava/lang/Object;
.source "H5LinkMonitorTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LinkMonitorTree"


# instance fields
.field private linkNodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
            ">;"
        }
    .end annotation
.end field

.field private rootNode:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public addNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Ljava/lang/String;)V
    .locals 3
    .param p1, "linkNode"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .param p2, "parentNodeName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string/jumbo v1, "H5LinkMonitorTree"

    const-string/jumbo v2, "linkNode == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->rootNode:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    if-nez v1, :cond_1

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->rootNode:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 49
    .local v0, "parentNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-nez v0, :cond_2

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->rootNode:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->addChildNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->rootNode:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setParentNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->addChildNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->setParentNode(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)V

    goto :goto_0
.end method

.method public containsNode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLinkMonitorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;>;"
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree$1;-><init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->linkNodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    return-object v0
.end method

.method public logExpectationFail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "linkId"    # Ljava/lang/String;
    .param p2, "timeoutNodeName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v6, "H5_LINK_EXPECTATION_FAIL"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    .line 95
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "linkId"

    invoke-virtual {v6, v7, p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "step"

    invoke-virtual {v6, v7, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "timeout"

    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 97
    .local v3, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;>;"
    const-string/jumbo v5, ""

    .line 99
    .local v5, "replayStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    .line 101
    .local v2, "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 104
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    goto :goto_0

    .line 108
    .end local v2    # "linkNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "replays"

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v1

    .line 111
    .local v1, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const/4 v0, 0x0

    .line 112
    .local v0, "h5Page":Liop;
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v0

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Liop;->getPageData()Lior;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 116
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-interface {v0}, Liop;->getPageData()Lior;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 119
    :cond_3
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 120
    return-void
.end method
