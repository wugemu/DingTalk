.class Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "result"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v2, "lwpStatus"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    const-string/jumbo v3, "networkEvent"

    invoke-static {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$200(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "jsonException":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConnected()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "result"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "lwpStatus"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    const-string/jumbo v3, "networkEvent"

    invoke-static {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$300(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "result"

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$000(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v2, "lwpStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Connection$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Connection;

    const-string/jumbo v3, "networkEvent"

    invoke-static {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Connection;->access$400(Lcom/alibaba/lightapp/runtime/plugin/device/Connection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "jsonException":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
