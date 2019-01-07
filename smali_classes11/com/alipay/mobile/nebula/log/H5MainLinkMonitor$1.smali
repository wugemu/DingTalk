.class final Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor$1;
.super Ljava/lang/Object;
.source "H5MainLinkMonitor.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerPageStartedLink(Liop;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkExpectation(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;)V
    .locals 6
    .param p1, "linkMonitorTree"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 172
    const-string/jumbo v2, "page_finish"

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v1

    .line 173
    .local v1, "pageFinishNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    const-string/jumbo v2, "page_fail"

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkNodeByName(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    move-result-object v0

    .line 174
    .local v0, "pageFailNode":Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 175
    const-string/jumbo v2, "H5LinkMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkExpectation nodeName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " triggerTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 180
    const-string/jumbo v2, "H5LinkMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkExpectation nodeName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " triggerTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    const-string/jumbo v2, "app_start"

    const-string/jumbo v3, "page_finish"

    sget v4, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->PAGE_FINISH_TIME:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->logExpectationFail(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
