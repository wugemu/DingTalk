.class public final Lbyq;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v4, 0x0

    .line 118
    if-nez p0, :cond_0

    move-object v3, v4

    .line 140
    :goto_0
    return-object v3

    .line 121
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v2

    .line 122
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 127
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v6, v6, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v3, v6, :cond_3

    .line 133
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    .line 134
    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    .line 133
    invoke-static {v3, v6, v7}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getLiveSessionObject fromJson failed, error="

    aput-object v7, v3, v6

    const/4 v6, 0x1

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 136
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2013
    const-string/jumbo v6, "live"

    invoke-static {v6, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :cond_4
    move-object v3, v4

    .line 140
    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;
    .param p3, "x3"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 51
    .line 3282
    const/4 v1, 0x0

    .line 3283
    const-class v0, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/GroupNickService;

    .line 3284
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v0

    .line 3285
    if-eqz v0, :cond_1

    .line 3286
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    .line 3288
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3289
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    .line 3292
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;-><init>()V

    .line 3293
    iput-object p1, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->cid:Ljava/lang/String;

    .line 3294
    iget-object v2, p2, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->uuid:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->liveUuid:Ljava/lang/String;

    .line 3295
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;->nickname:Ljava/lang/String;

    .line 3296
    new-instance v0, Lbyq$9;

    invoke-direct {v0, p0, p1, p3}, Lbyq$9;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 3318
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3319
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbxe;->a(Lcom/alibaba/android/dingtalk/live/rpc/model/StopLiveReqObject;Lcom/alibaba/wukong/Callback;)V

    .line 51
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    sget v1, Lbtp$g;->dt_lv_live_error_network:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    :cond_2
    sget v1, Lbtp$g;->dt_lv_live_voip_ongoing:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 71
    const-string/jumbo v1, "start live failed due to tel is ongoing"

    .line 1013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "live_im_start_live_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lbyf;->a(Landroid/app/Activity;)V

    .line 78
    new-instance v0, Lbyq$1;

    invoke-direct {v0, p0, p1, p2}, Lbyq$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 113
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 114
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 51
    .line 2145
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    new-instance v0, Lbyq$4;

    invoke-direct {v0, p0, p1, p2}, Lbyq$4;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 2173
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 2175
    new-instance v5, Lbul;

    invoke-direct {v5}, Lbul;-><init>()V

    .line 2176
    iput-object p1, v5, Lbul;->a:Ljava/lang/String;

    .line 2177
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v5, Lbul;->b:Ljava/lang/String;

    .line 2178
    invoke-static {}, Lbxe;->a()Lbxe;

    move-result-object v1

    .line 3116
    new-instance v0, Lbxe$21;

    const/4 v3, 0x0

    iget-object v4, v1, Lbxe;->a:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v5}, Lbxe$21;-><init>(Lbxe;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lbul;)V

    .line 3122
    invoke-virtual {v0}, Lbxe$21;->start()V

    .line 51
    :cond_0
    return-void
.end method
