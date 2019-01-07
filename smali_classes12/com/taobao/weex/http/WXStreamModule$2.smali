.class Lcom/taobao/weex/http/WXStreamModule$2;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/http/WXStreamModule;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .locals 8
    .param p1, "response"    # Lcom/taobao/weex/common/WXResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 165
    iget-object v4, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v4, :cond_1

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v2, "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    const-string/jumbo v4, "-1"

    iget-object v6, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    :cond_0
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v4, "statusText"

    const-string/jumbo v5, "ERR_CONNECT_FAILED"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :goto_0
    const-string/jumbo v4, "headers"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v4, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v4, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 193
    .end local v2    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 171
    .restart local v2    # "resp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v4, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "code":I
    const-string/jumbo v4, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v6, "ok"

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_3

    const/16 v4, 0x12b

    if-gt v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-nez v4, :cond_4

    .line 175
    const-string/jumbo v4, "data"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_2
    const-string/jumbo v4, "statusText"

    iget-object v5, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/weex/http/Status;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v4, v5

    .line 173
    goto :goto_1

    .line 177
    :cond_4
    iget-object v6, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz p2, :cond_5

    const-string/jumbo v4, "Content-Type"

    .line 178
    invoke-static {p2, v4}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    :goto_3
    invoke-static {v6, v4}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "respData":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "data"

    iget-object v6, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v7, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v7}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/taobao/weex/http/WXStreamModule;->parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "exception":Lcom/alibaba/fastjson/JSONException;
    const-string/jumbo v4, ""

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    const-string/jumbo v4, "ok"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "{\'err\':\'Data parse failed!\'}"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 178
    .end local v1    # "exception":Lcom/alibaba/fastjson/JSONException;
    .end local v3    # "respData":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, ""

    goto :goto_3
.end method
