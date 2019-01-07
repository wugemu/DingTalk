.class final Lfbq$1;
.super Landroid/os/Handler;
.source "CertifyTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbq;


# direct methods
.method constructor <init>(Lfbq;)V
    .locals 0
    .param p1, "this$0"    # Lfbq;

    .prologue
    .line 91
    iput-object p1, p0, Lfbq$1;->a:Lfbq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/alibaba/android/user/certify/ImageData;

    if-eqz v4, :cond_0

    .line 95
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 96
    .local v0, "code":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/user/certify/ImageData;

    .line 99
    .local v2, "image":Lcom/alibaba/android/user/certify/ImageData;
    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    .end local v0    # "code":I
    .end local v2    # "image":Lcom/alibaba/android/user/certify/ImageData;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v0    # "code":I
    .restart local v2    # "image":Lcom/alibaba/android/user/certify/ImageData;
    :cond_1
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 107
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "bigImage"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_2
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lfbq;->b()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "handler err:%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Lorg/json/JSONException;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "movement_1"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .local v3, "movement1":Lorg/json/JSONObject;
    const-string/jumbo v4, "image_1"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    .end local v3    # "movement1":Lorg/json/JSONObject;
    :cond_3
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 126
    :pswitch_2
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 127
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "movement_1"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 128
    .restart local v3    # "movement1":Lorg/json/JSONObject;
    const-string/jumbo v4, "image_2"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .end local v3    # "movement1":Lorg/json/JSONObject;
    :cond_4
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 137
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "movement_2"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 138
    .restart local v3    # "movement1":Lorg/json/JSONObject;
    const-string/jumbo v4, "image_1"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .end local v3    # "movement1":Lorg/json/JSONObject;
    :cond_5
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 146
    :pswitch_4
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 147
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->a(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "movement_2"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 148
    .restart local v3    # "movement1":Lorg/json/JSONObject;
    const-string/jumbo v4, "image_2"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    .end local v3    # "movement1":Lorg/json/JSONObject;
    :cond_6
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->b(Lfbq;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 156
    :pswitch_5
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "32"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 162
    :pswitch_6
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "8"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 168
    :pswitch_7
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 169
    iget-object v4, p0, Lfbq$1;->a:Lfbq;

    invoke-static {v4}, Lfbq;->c(Lfbq;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "16"

    invoke-virtual {v2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
