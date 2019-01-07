.class Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;
.super Ljava/lang/Object;
.source "H5NetworkAnalysisPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$numOfRound:I

.field final synthetic val$resultJson:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$host:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$numOfRound:I

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$resultJson:Lcom/alibaba/fastjson/JSONObject;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$bridgeContext:Liny;

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
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "result":Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$host:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$numOfRound:I

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->ping(Ljava/lang/String;I)Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$resultJson:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$bridgeContext:Liny;

    invoke-static {v2, v1, v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->access$100()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->val$resultJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "globalException":Ljava/lang/Exception;
    const-string/jumbo v2, "H5NetworkAnalysisPlugin"

    const-string/jumbo v3, "exception detail."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
