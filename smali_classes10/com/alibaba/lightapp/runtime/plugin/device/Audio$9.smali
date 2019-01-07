.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lcom/alibaba/wukong/im/VoiceTranslate$VoiceTranslateEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->translateVoice(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceTranslateEvent(Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V
    .locals 6
    .param p1, "entityId"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/wukong/im/VoiceTranslateData;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    .line 424
    iget-boolean v3, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->finished:Z

    if-nez v3, :cond_0

    .line 446
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    .line 428
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 429
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 431
    .local v2, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "open_api_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 433
    const-string/jumbo v3, "mediaId"

    add-int/lit8 v4, v1, 0x9

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    :goto_1
    const-string/jumbo v3, "content"

    iget-object v4, p2, Lcom/alibaba/wukong/im/VoiceTranslateData;->content:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v1    # "index":I
    :goto_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    .restart local v1    # "index":I
    :cond_1
    :try_start_1
    const-string/jumbo v3, "mediaId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 438
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 440
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 444
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "js":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const-string/jumbo v4, "Unkonwn Exception"

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
