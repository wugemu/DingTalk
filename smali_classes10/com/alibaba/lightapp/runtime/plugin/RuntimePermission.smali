.class public Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "RuntimePermission.java"


# static fields
.field public static final COMPATIBLE_CONFIG_TYPE_VALUE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->success(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->success(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public check(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "url"

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    return-object v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestAuthCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionRequest;->getCorpId()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "corpId":Ljava/lang/String;
    iget v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    packed-switch v3, :pswitch_data_0

    .line 4047
    sget-object v3, Lhqf$b;->a:Lhqf;

    .line 227
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$5;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$5;-><init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 4052
    new-instance v6, Lhqt;

    invoke-direct {v6}, Lhqt;-><init>()V

    .line 4053
    new-instance v7, Lhqf$1;

    invoke-direct {v7, v3, v5}, Lhqf$1;-><init>(Lhqf;Lhqf$c;)V

    invoke-interface {v6, v0, v4, v7}, Lhqs;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 259
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    .line 265
    .end local v0    # "corpId":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 193
    .restart local v0    # "corpId":Ljava/lang/String;
    :pswitch_0
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    iget-object v2, v3, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->a:Ljava/lang/String;

    .line 3047
    .local v2, "miniAppId":Ljava/lang/String;
    :goto_2
    sget-object v4, Lhqf$b;->a:Lhqf;

    .line 195
    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$4;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 3115
    const-class v3, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;

    .line 3116
    new-instance v6, Lhqf$4;

    invoke-direct {v6, v4, v5}, Lhqf$4;-><init>(Lhqf;Lhqf$c;)V

    invoke-interface {v3, v0, v2, v6}, Lcom/alibaba/lightapp/runtime/idl/OAPIIService;->authorize4MicroappWithMiniApp(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "corpId":Ljava/lang/String;
    .end local v2    # "miniAppId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 262
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setAuthStatus(I)V

    .line 263
    const-string/jumbo v3, "OAuth"

    const-string/jumbo v4, "runtimepermission.requestAuthCode"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v5, "2"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lgvi;->authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "corpId":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v2, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public requestJsApis(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 34
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 33
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 35
    .local v6, "callbackId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, "corpId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "appId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 37
    .local v9, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "agentId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 38
    .local v18, "agentId":Ljava/lang/String;
    const-string/jumbo v3, "-1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const-string/jumbo v18, ""

    .line 41
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "timeStamp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 42
    .local v10, "timeStamp":J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "nonceStr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    .local v12, "nonceStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "signature"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 44
    .local v13, "signature":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 45
    .local v7, "url":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v32

    .line 46
    .local v32, "type":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "jsApiList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v23

    .line 48
    .local v23, "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, -0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_5

    .line 49
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1101
    if-nez v3, :cond_2

    .line 110
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "appId":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "nonceStr":Ljava/lang/String;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v18    # "agentId":Ljava/lang/String;
    .end local v23    # "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "type":I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    return-object v3

    .line 1105
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "corpId":Ljava/lang/String;
    .restart local v9    # "appId":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "nonceStr":Ljava/lang/String;
    .restart local v13    # "signature":Ljava/lang/String;
    .restart local v18    # "agentId":Ljava/lang/String;
    .restart local v23    # "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "type":I
    :cond_2
    :try_start_1
    new-instance v24, Lhqt;

    invoke-direct/range {v24 .. v24}, Lhqt;-><init>()V

    .line 1106
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1107
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1108
    iget-object v4, v15, Lhqe;->a:Lhqb;

    .line 1109
    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lhqb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v25

    new-instance v14, Lhqe$1;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lhqe$1;-><init>(Lhqe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    move-object/from16 v19, v24

    move-object/from16 v20, v8

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v7

    move-object/from16 v26, v14

    .line 1108
    invoke-interface/range {v19 .. v26}, Lhqs;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1152
    .end local v23    # "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "type":I
    :catch_0
    move-exception v4

    .line 1153
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    const/4 v5, 0x3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lhqe$a;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "appId":Ljava/lang/String;
    .end local v10    # "timeStamp":J
    .end local v12    # "nonceStr":Ljava/lang/String;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v18    # "agentId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 105
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setConfigStatus(I)V

    .line 106
    const/4 v3, 0x3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v25, "JsConfig"

    const-string/jumbo v26, "runtimepermission.requestJsApis"

    const-string/jumbo v27, "3"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v24, p0

    invoke-virtual/range {v24 .. v29}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v5, "2"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v4, v5, v14}, Lgvi;->jsConfigFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "corpId":Ljava/lang/String;
    .restart local v9    # "appId":Ljava/lang/String;
    .restart local v10    # "timeStamp":J
    .restart local v12    # "nonceStr":Ljava/lang/String;
    .restart local v13    # "signature":Ljava/lang/String;
    .restart local v18    # "agentId":Ljava/lang/String;
    .restart local v23    # "jsApiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "type":I
    :cond_3
    const/16 v24, -0x1

    move-object/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move-object/from16 v25, v3

    :try_start_3
    invoke-virtual/range {v19 .. v25}, Lhqe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILhqe$a;)V

    goto/16 :goto_0

    .line 1133
    :cond_4
    iget-object v4, v15, Lhqe;->a:Lhqb;

    .line 1134
    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lhqb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    new-instance v14, Lhqe$2;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lhqe$2;-><init>(Lhqe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    move-object/from16 v25, v18

    move-object/from16 v26, v8

    move-object/from16 v27, v21

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v7

    move-object/from16 v32, v14

    .line 1133
    invoke-interface/range {v24 .. v32}, Lhqs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 75
    :cond_5
    :try_start_4
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v13}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1173
    if-eqz v3, :cond_1

    .line 1178
    :try_start_5
    new-instance v24, Lhqt;

    invoke-direct/range {v24 .. v24}, Lhqt;-><init>()V

    .line 1179
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1180
    iget-object v4, v15, Lhqe;->a:Lhqb;

    .line 1181
    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lhqb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v31

    new-instance v14, Lhqe$3;

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v20}, Lhqe$3;-><init>(Lhqe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhqe$a;)V

    move-object/from16 v25, v18

    move-object/from16 v26, v8

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v7

    move-object/from16 v33, v14

    .line 1180
    invoke-interface/range {v24 .. v33}, Lhqs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcma;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1203
    :catch_2
    move-exception v4

    .line 1204
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1205
    const/4 v5, 0x3

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lhqe$a;->onError(ILjava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move/from16 v24, v32

    move-object/from16 v25, v3

    .line 1200
    :try_start_7
    invoke-virtual/range {v19 .. v25}, Lhqe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILhqe$a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public requestOperateAuthCode(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 17
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v5}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v12

    .line 117
    .local v12, "session":Lhqe$d;
    if-eqz v12, :cond_0

    .line 1488
    iget-object v14, v12, Lhqe$d;->b:Ljava/lang/String;

    .line 118
    .local v14, "sessionCorpId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "corpId"

    const-string/jumbo v8, ""

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "argCorpId":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 121
    move-object v4, v10

    .line 133
    .local v4, "corpId":Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_3

    .line 1492
    iget-object v13, v12, Lhqe$d;->c:Ljava/lang/String;

    .line 134
    .local v13, "sessionAgentId":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v5, "agentId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "argAgentId":Ljava/lang/String;
    if-nez v13, :cond_4

    .line 137
    move-object v2, v9

    .line 148
    .local v2, "agentId":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2047
    .local v6, "agentIdLong":J
    sget-object v15, Lhqf$b;->a:Lhqf;

    .line 149
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    new-instance v16, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;

    invoke-direct/range {v16 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 2072
    new-instance v3, Lhqt;

    invoke-direct {v3}, Lhqt;-><init>()V

    .line 2073
    new-instance v8, Lhqf$2;

    move-object/from16 v0, v16

    invoke-direct {v8, v15, v0}, Lhqf$2;-><init>(Lhqf;Lhqf$c;)V

    invoke-interface/range {v3 .. v8}, Lhqs;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 175
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    .line 180
    .end local v2    # "agentId":Ljava/lang/String;
    .end local v4    # "corpId":Ljava/lang/String;
    .end local v6    # "agentIdLong":J
    .end local v9    # "argAgentId":Ljava/lang/String;
    .end local v10    # "argCorpId":Ljava/lang/String;
    .end local v12    # "session":Lhqe$d;
    .end local v13    # "sessionAgentId":Ljava/lang/String;
    .end local v14    # "sessionCorpId":Ljava/lang/String;
    :goto_4
    return-object v3

    .line 117
    .restart local v12    # "session":Lhqe$d;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 124
    .restart local v10    # "argCorpId":Ljava/lang/String;
    .restart local v14    # "sessionCorpId":Ljava/lang/String;
    :cond_1
    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    move-object v4, v14

    .restart local v4    # "corpId":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v4    # "corpId":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v8, 0x8

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "invalid corpId: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 129
    invoke-static {v8, v15}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 176
    .end local v10    # "argCorpId":Ljava/lang/String;
    .end local v12    # "session":Lhqe$d;
    .end local v14    # "sessionCorpId":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 177
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string/jumbo v3, "OAuth"

    const-string/jumbo v5, "runtimepermission.requestAuthCode"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8, v15}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v8, "3"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v5, v8, v15}, Lgvi;->authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_4

    .line 133
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "corpId":Ljava/lang/String;
    .restart local v10    # "argCorpId":Ljava/lang/String;
    .restart local v12    # "session":Lhqe$d;
    .restart local v14    # "sessionCorpId":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 140
    .restart local v9    # "argAgentId":Ljava/lang/String;
    .restart local v13    # "sessionAgentId":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v13, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 141
    move-object v2, v13

    .restart local v2    # "agentId":Ljava/lang/String;
    goto/16 :goto_3

    .line 144
    .end local v2    # "agentId":Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v8, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "invalid agentId: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 145
    invoke-static {v8, v15}, Lcom/alibaba/lightapp/runtime/plugin/RuntimePermission;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v3, v5, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
