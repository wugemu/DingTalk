.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Auth.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public requestAuthCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "corpId":Ljava/lang/String;
    new-instance v2, Lhqt;

    invoke-direct {v2}, Lhqt;-><init>()V

    .line 26
    .local v2, "oapiAPI":Lhqs;
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v2, v0, v3, v4}, Lhqs;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 55
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 59
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "oapiAPI":Lhqs;
    :goto_0
    return-object v3

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    const-string/jumbo v3, "OAuth"

    const-string/jumbo v4, "auth.requestAuthCode"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Auth;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method
