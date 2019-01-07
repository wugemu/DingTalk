.class final Lhlf$1;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Lcom/ali/user/enterprise/base/rpc/LoginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhlf;


# direct methods
.method constructor <init>(Lhlf;)V
    .locals 0
    .param p1, "this$0"    # Lhlf;

    .prologue
    .line 30
    iput-object p1, p0, Lhlf$1;->a:Lhlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final login(Ljava/lang/String;Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;)V
    .locals 9
    .param p1, "requestString"    # Ljava/lang/String;
    .param p2, "dingRpcCallback"    # Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    const-string/jumbo v5, "TAG"

    const-string/jumbo v6, "login impl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "tokenInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "request":Ljava/lang/String;
    const-string/jumbo v5, "riskControlInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "risk":Ljava/lang/String;
    const-string/jumbo v5, "ext"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "ext":Ljava/lang/String;
    const-string/jumbo v5, "login request"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "request="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "risk="

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "ext="

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lhlg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-class v5, Lcom/alibaba/lightapp/runtime/idl/UicAuthIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/idl/UicAuthIService;

    new-instance v6, Lhlf$1$1;

    invoke-direct {v6, p0, p2}, Lhlf$1$1;-><init>(Lhlf$1;Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;)V

    invoke-interface {v5, v3, v4, v1, v6}, Lcom/alibaba/lightapp/runtime/idl/UicAuthIService;->getTbSessionFromEaSystem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcmi;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "risk":Ljava/lang/String;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    const/4 v5, -0x2

    const-string/jumbo v6, "JSONException"

    invoke-interface {p2, v5, v6}, Lcom/ali/user/enterprise/base/rpc/model/DingRpcCallback;->onFail(ILjava/lang/String;)V

    .line 79
    :cond_0
    const-string/jumbo v5, "UICAuth_JSONException"

    invoke-static {v5}, Lcom/ali/user/enterprise/base/log/UserTrackAdapter;->sendUT(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v5, "login.dingDataProvider"

    const-string/jumbo v6, "UICAuth_onException,code=-2,message=JSONException"

    invoke-static {v5, v6}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
