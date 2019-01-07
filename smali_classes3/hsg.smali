.class public final Lhsg;
.super Lcom/alibaba/lightapp/runtime/PluginManager;
.source "WindJspiPluginManager.java"


# instance fields
.field private j:Lhsf;


# direct methods
.method public constructor <init>(Lhsf;)V
    .locals 0
    .param p1, "ctx"    # Lhsf;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;-><init>(Lhde;)V

    .line 18
    iput-object p1, p0, Lhsg;->j:Lhsf;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 23
    iget-object v0, p0, Lhsg;->j:Lhsf;

    .line 1133
    iget-object v0, v0, Lhsf;->a:Ljrh;

    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/weex/util/CommonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 2096
    iget-object v2, v0, Ljrh;->a:Ljrh$a;

    if-eqz v2, :cond_0

    .line 2097
    iget-object v0, v0, Ljrh;->a:Ljrh$a;

    invoke-interface {v0, p1, v1}, Ljrh$a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lhsg;->j:Lhsf;

    .line 2116
    iget-object v0, v0, Lhsf;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrh;

    .line 2117
    if-eqz v0, :cond_1

    .line 2118
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v2

    .line 2119
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v1

    .line 2120
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v3

    .line 2122
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2123
    const-string/jumbo v5, "__keep__"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    const-string/jumbo v3, "__status__"

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    const-string/jumbo v2, "__message__"

    if-eqz v1, :cond_3

    .line 2193
    if-eqz v1, :cond_0

    .line 2194
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 2195
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 2125
    :cond_0
    :goto_0
    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    invoke-virtual {v0, v4}, Ljrh;->a(Ljava/lang/Object;)V

    .line 29
    :cond_1
    return-void

    .line 2197
    :cond_2
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 2198
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    goto :goto_0

    .line 2126
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0
.end method
