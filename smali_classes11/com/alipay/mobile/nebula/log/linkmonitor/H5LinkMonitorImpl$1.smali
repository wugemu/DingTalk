.class Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;
.super Ljava/lang/Object;
.source "H5LinkMonitorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

.field final synthetic val$linkId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

.field final synthetic val$nodeName:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->this$0:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$linkId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$nodeName:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$timeout:I

    iput-object p5, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$listener:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->this$0:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$linkId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$nodeName:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$timeout:I

    iget-object v4, p0, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl$1;->val$listener:Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;->access$000(Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorImpl;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V

    .line 113
    return-void
.end method
