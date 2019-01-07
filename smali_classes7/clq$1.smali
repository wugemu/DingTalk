.class final Lclq$1;
.super Ljava/lang/Object;
.source "OfflineTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lclq;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclq;


# direct methods
.method constructor <init>(Lclq;)V
    .locals 0
    .param p1, "this$0"    # Lclq;

    .prologue
    .line 98
    iput-object p1, p0, Lclq$1;->a:Lclq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    iget-object v8, p0, Lclq$1;->a:Lclq;

    iget-object v8, v8, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    if-nez v8, :cond_0

    .line 102
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b()V

    .line 205
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lclq;->c()Ljava/util/Set;

    move-result-object v8

    iget-object v9, p0, Lclq$1;->a:Lclq;

    iget-object v9, v9, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v9, v9, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v8, "offline"

    invoke-static {}, Lclq;->d()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "run task "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lclq$1;->a:Lclq;

    iget-object v12, v12, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v12, v12, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lclq;->d()Ljava/lang/String;

    .line 110
    iget-object v8, p0, Lclq$1;->a:Lclq;

    iget-object v8, v8, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v6, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->b:Ljava/lang/String;

    .line 111
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 113
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    const-string/jumbo v8, "dt"

    const-string/jumbo v9, "j"

    invoke-virtual {v0, v8, v9}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 114
    const-string/jumbo v8, "f"

    const-string/jumbo v9, "h5"

    invoke-virtual {v0, v8, v9}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 117
    iget-object v8, p0, Lclq$1;->a:Lclq;

    iget-object v8, v8, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v8, p0, Lclq$1;->a:Lclq;

    iget-object v8, v8, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->c:Ljava/lang/String;

    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "headerJson":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 121
    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v7}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v2    # "headerJson":Lorg/json/JSONObject;
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lclq$1;->a:Lclq;

    iget-object v8, v8, Lclq;->a:Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->d:Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    :goto_2
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v5

    .line 140
    .local v5, "request":Lcom/laiwang/protocol/core/Request;
    invoke-static {}, Lclr;->a()Lclr;

    move-result-object v8

    .line 1090
    iget-boolean v8, v8, Lclr;->a:Z

    .line 140
    if-eqz v8, :cond_2

    .line 141
    const-wide/16 v8, 0x7530

    invoke-virtual {v5, v8, v9}, Lcom/laiwang/protocol/core/Request;->setTimeout(J)V

    .line 147
    :goto_3
    new-instance v8, Lclq$1$1;

    invoke-direct {v8, p0}, Lclq$1$1;-><init>(Lclq$1;)V

    invoke-static {v5, v8}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V

    goto/16 :goto_0

    .line 134
    .end local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 143
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "request":Lcom/laiwang/protocol/core/Request;
    :cond_2
    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v8, v9}, Lcom/laiwang/protocol/core/Request;->setTimeout(J)V

    goto :goto_3
.end method
