.class Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;
.super Ljava/lang/Object;
.source "RuntimePermission.java"

# interfaces
.implements Lhqf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->requestOperateAuthCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthCodeReceived(Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v1, "res":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$800(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    const-string/jumbo v3, "OAuth"

    const-string/jumbo v4, "runtimepermission.requestAuthCode"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$900(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    const-string/jumbo v3, "OAuth"

    const-string/jumbo v4, "runtimepermission.requestAuthCode"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v4, "2"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lgvi;->authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    .line 169
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 170
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 169
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;

    const-string/jumbo v1, "OAuth"

    const-string/jumbo v2, "runtimepermission.requestAuthCode"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lgvi;->authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
