.class Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree$1;
.super Ljava/lang/Object;
.source "H5LinkMonitorTree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;->getLinkMonitorList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree$1;->this$0:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)I
    .locals 5
    .param p1, "lhs"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;
    .param p2, "rhs"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v0

    .line 72
    .local v0, "lTime":J
    invoke-virtual {p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;->getTriggerTime()J

    move-result-wide v2

    .line 73
    .local v2, "rTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 74
    const/4 v4, -0x1

    .line 78
    :goto_0
    return v4

    .line 75
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 76
    const/4 v4, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    check-cast p2, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree$1;->compare(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;)I

    move-result v0

    return v0
.end method
