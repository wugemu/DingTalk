.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;
.super Ljava/lang/Object;
.source "MiniHttpPlugin.java"

# interfaces
.implements Lhna$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhna$a",
        "<",
        "Lhmz$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liny;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;Liny;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    const-string/jumbo v0, "MiniHttpPlugin"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "percentage"    # I

    .prologue
    .line 140
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    const-string/jumbo v1, "MiniHttpPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    if-eqz v1, :cond_1

    .line 147
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 148
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz p2, :cond_0

    .line 150
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 155
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "f_lightapp_mini_http_request_fail_warn"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->d:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lgvi;->miniAppHttpRequestApiError(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    check-cast p1, Lhmz$a;

    .line 1110
    if-nez p1, :cond_1

    .line 1111
    const-string/jumbo v0, "MiniHttpPlugin"

    const-string/jumbo v1, "onSuccess but result is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    if-eqz v0, :cond_0

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->e:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;

    iget-object v1, p1, Lhmz$a;->b:[B

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1119
    const-string/jumbo v2, "statusCode"

    iget v3, p1, Lhmz$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string/jumbo v2, "header"

    iget-object v3, p1, Lhmz$a;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string/jumbo v2, "success"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    invoke-interface {v2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1125
    const-string/jumbo v1, "MiniHttpPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSuccess "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lhmz$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1128
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    const/16 v2, 0xe

    const-string/jumbo v3, "unsupported encoding exception"

    invoke-interface {v1, v2, v3}, Liny;->sendError(ILjava/lang/String;)V

    .line 1129
    const-string/jumbo v1, "MiniHttpPlugin"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :catch_1
    move-exception v0

    .line 1131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1132
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniHttpPlugin$1;->a:Liny;

    const/16 v2, 0xa

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Liny;->sendError(ILjava/lang/String;)V

    .line 1133
    const-string/jumbo v1, "MiniHttpPlugin"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
