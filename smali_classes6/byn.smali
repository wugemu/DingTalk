.class public final Lbyn;
.super Ljava/lang/Object;
.source "LiveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alibaba/wukong/im/Conversation;)Lbyb;
    .locals 11
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v5, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v5

    .line 81
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    .line 82
    invoke-virtual {v6, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, "floatWindowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 88
    .local v2, "floatWindowObject":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v2, :cond_2

    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v8, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v8, v8, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v6, v8, :cond_2

    .line 93
    const/4 v4, 0x0

    .line 95
    .local v4, "livePlayObject":Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    .line 96
    invoke-virtual {v8}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 95
    invoke-static {v6, v8, v9}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    if-eqz v4, :cond_2

    .line 102
    new-instance v5, Lbyb;

    invoke-direct {v5}, Lbyb;-><init>()V

    .line 103
    .local v5, "object":Lbyb;
    iput-object v4, v5, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 104
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lbyb;->b:Ljava/lang/String;

    .line 105
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lbyb;->c:Ljava/lang/String;

    goto :goto_0

    .line 97
    .end local v5    # "object":Lbyb;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "dt_live"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "getLiveSessionObject fromJson failed, error="

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 98
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v5, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lbyb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lbyb;>;>;"
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lbyn$1;

    invoke-direct {v0, p1}, Lbyn$1;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 54
    .local v0, "convCallback":Lcom/alibaba/wukong/Callback;
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "convCallback":Lcom/alibaba/wukong/Callback;
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 57
    .restart local v0    # "convCallback":Lcom/alibaba/wukong/Callback;
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V

    goto :goto_0
.end method
