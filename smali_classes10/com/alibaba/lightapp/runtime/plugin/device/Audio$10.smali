.class Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->uploadVoice([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

.field final synthetic val$callbackIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->val$callbackIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 500
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->val$callbackIds:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 501
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    const/4 v5, 0x3

    invoke-static {v5, p3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2700(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 500
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "callbackId":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    .line 507
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v6, 0x0

    .line 463
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "remoteUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2300(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->getRecordFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p2, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "mediaId"

    invoke-virtual {v4, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string/jumbo v7, "remoteUrl"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)Lcom/alibaba/lightapp/runtime/plugin/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/plugin/AudioManager;->getmDuration()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v2, v8, v10

    .line 472
    .local v2, "duration":D
    const-string/jumbo v7, "duration"

    invoke-virtual {v4, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 474
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->val$callbackIds:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v0, v8, v7

    .line 475
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 476
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v10, v4, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v2    # "duration":D
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "remoteUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 481
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->val$callbackIds:[Ljava/lang/String;

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 482
    .restart local v0    # "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 483
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2500(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 481
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_1
    move-exception v1

    .line 488
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 489
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->val$callbackIds:[Ljava/lang/String;

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 490
    .restart local v0    # "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 491
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$2600(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 489
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 495
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/device/Audio$10;->this$0:Lcom/alibaba/lightapp/runtime/plugin/device/Audio;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/device/Audio;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/device/Audio;)V

    .line 496
    return-void
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 458
    return-void
.end method
