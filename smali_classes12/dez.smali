.class public final Ldez;
.super Ljava/lang/Object;
.source "SessionNotifyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 60
    :goto_0
    return-object v2

    .line 35
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    .line 36
    .local v1, "unreadCount":I
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    .line 38
    .local v0, "isNotifyEnabled":Z
    if-eqz v0, :cond_5

    .line 40
    if-lez v1, :cond_1

    .line 42
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->UNREAD_COUNT:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0

    .line 1069
    :cond_1
    invoke-static {}, Lebc;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Ldez;->b(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/models/RemindIconModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcms;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 45
    :goto_1
    if-eqz v2, :cond_3

    .line 47
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0

    .line 1069
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 48
    :cond_3
    invoke-static {p0}, Ldez;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0

    .line 51
    :cond_4
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0

    .line 56
    :cond_5
    if-lez v1, :cond_6

    .line 58
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NOTICE_RED:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0

    .line 60
    :cond_6
    sget-object v2, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    .locals 14
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 77
    if-nez p0, :cond_0

    move-object v5, v8

    .line 109
    :goto_0
    return-object v5

    .line 80
    :cond_0
    const-string/jumbo v9, "remindInfo"

    invoke-interface {p0, v9}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "remindInfo":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v5, v8

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "infos"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 87
    .local v3, "infos":Lorg/json/JSONArray;
    if-nez v3, :cond_2

    move-object v5, v8

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;

    invoke-static {v9, v10}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, "remindModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/RemindIconModel;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 93
    invoke-static {}, Ldmy;->a()J

    move-result-wide v0

    .line 94
    .local v0, "currentTime":J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;

    .line 95
    .local v5, "remindIconModel":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    if-eqz v5, :cond_3

    .line 98
    iget v10, v5, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->type:I

    if-ne v10, v13, :cond_3

    .line 99
    iget-wide v10, v5, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->start:J

    cmp-long v10, v0, v10

    if-ltz v10, :cond_3

    iget-wide v10, v5, Lcom/alibaba/android/dingtalkim/models/RemindIconModel;->end:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_3

    goto :goto_0

    .line 105
    .end local v0    # "currentTime":J
    .end local v3    # "infos":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "remindIconModel":Lcom/alibaba/android/dingtalkim/models/RemindIconModel;
    .end local v7    # "remindModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/RemindIconModel;>;"
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "im"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "handleRemindInfo error="

    aput-object v12, v10, v11

    .line 107
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    .line 106
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    move-object v5, v8

    .line 109
    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    if-nez p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string/jumbo v2, "guideChat"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 120
    invoke-static {}, Lebc;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
