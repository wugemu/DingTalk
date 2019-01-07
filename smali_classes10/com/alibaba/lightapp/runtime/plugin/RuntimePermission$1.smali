.class Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;
.super Ljava/lang/Object;
.source "RuntimePermission.java"

# interfaces
.implements Lhqe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->requestJsApis(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$nonceStr:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$timeStamp:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$callbackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$corpId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$appId:Ljava/lang/String;

    iput-wide p7, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$timeStamp:J

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$nonceStr:Ljava/lang/String;

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 10
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setConfigStatus(I)V

    .line 61
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$url:Ljava/lang/String;

    const-string/jumbo v3, "requestJsApis:"

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "requestJsApis:"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, "corpId:"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$corpId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, ";appId"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$appId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, ";timeStamp"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$timeStamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, ";nonceStr"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$nonceStr:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string/jumbo v6, ";signature"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$signature:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string/jumbo v6, "errCode"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string/jumbo v6, "errMsg"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    const-string/jumbo v1, "JsConfig"

    const-string/jumbo v2, "runtimepermission.requestJsApis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$200(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lgvi;->jsConfigFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$300(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p1, "apis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setConfigStatus(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    const-string/jumbo v1, "JsConfig"

    const-string/jumbo v2, "runtimepermission.requestJsApis"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$000(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/Plugin;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$100(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 56
    return-void
.end method
