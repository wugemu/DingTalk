.class Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;
.super Lcmi;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/service/Request;->httpOverLwp(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhji;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$reqUrlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$pageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$reqUrlStr:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 178
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v7, "r":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v0, "ok"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v0, "code"

    invoke-virtual {v7, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string/jumbo v0, "reason"

    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    const-string/jumbo v1, "JsHttpOverLwp"

    const-string/jumbo v2, "httpOverLwp"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$800(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v7, v1}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$900(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lhqx;->b()Lhqw;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$pageUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lhqw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    const-string/jumbo v1, "from_tunnel_jsapi"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$reqUrlStr:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgvi;->warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/service/Request;)Lhde$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/service/Request;)Lhde$a;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "HTTPOVERLWP JSAPI"

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string/jumbo v4, "Fail"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "result="

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v7, v1, v2

    invoke-interface {v0, v1}, Lhde$a;->a([Ljava/lang/Object;)V

    .line 196
    :cond_0
    return-void

    .line 184
    .end local v3    # "appId":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLoadSuccess(Lhji;)V
    .locals 11
    .param p1, "result"    # Lhji;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v1, "r":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$pageUrl:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$200(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Lhji;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    :try_start_0
    const-string/jumbo v2, "ok"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$300(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 170
    :goto_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$600(Lcom/alibaba/lightapp/runtime/plugin/service/Request;)Lhde$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$700(Lcom/alibaba/lightapp/runtime/plugin/service/Request;)Lhde$a;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "HTTPOVERLWP JSAPI"

    aput-object v4, v3, v7

    const-string/jumbo v4, "Success"

    aput-object v4, v3, v8

    const-string/jumbo v4, "result="

    aput-object v4, v3, v10

    aput-object v1, v3, v9

    invoke-interface {v2, v3}, Lhde$a;->a([Ljava/lang/Object;)V

    .line 174
    :cond_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "ok"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v2, "code"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "result is null"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    const-string/jumbo v3, "JsHttpOverLwp"

    const-string/jumbo v4, "httpOverLwp"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$400(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v2, "safeTunnel"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v4, ";requestUrl="

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$reqUrlStr:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "JsApiLwpQuest:"

    aput-object v6, v5, v8

    const-string/jumbo v6, "Content-Length"

    invoke-virtual {p1, v6}, Lhji;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/service/Request;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/service/Request;->access$500(Lcom/alibaba/lightapp/runtime/plugin/service/Request;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lhji;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/service/Request$2;->onLoadSuccess(Lhji;)V

    return-void
.end method
