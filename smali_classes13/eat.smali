.class public final Leat;
.super Ljava/lang/Object;
.source "IMUtUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spmPage"    # Ljava/lang/String;
    .param p1, "spmD"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;
    .locals 10
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 47
    new-instance v1, Ljava/util/HashMap;

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 48
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    const-string/jumbo v5, "chat_cid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v5, "group_tag"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v5, "group_sub_tag"

    const-string/jumbo v6, "bizType"

    invoke-interface {p0, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v6, "chat_type"

    invoke-static {p0}, Ldza;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "OTO"

    :goto_1
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 57
    .local v2, "orgId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    .line 58
    const-string/jumbo v5, "org_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    invoke-static {p0}, Ldjl;->y(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "depId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    const-string/jumbo v5, "dept_id"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3
    const-string/jumbo v5, "function_type"

    .line 1137
    invoke-static {p0, v8}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v6

    .line 64
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    if-nez p0, :cond_5

    .line 2076
    const/4 v4, 0x0

    .line 66
    .local v4, "otoTag":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 67
    const-string/jumbo v5, "oto_tag"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v0    # "depId":Ljava/lang/String;
    .end local v2    # "orgId":J
    .end local v4    # "otoTag":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "MTM"

    goto :goto_1

    .line 2079
    .restart local v0    # "depId":Ljava/lang/String;
    .restart local v2    # "orgId":J
    :cond_5
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isUserBanWords()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2080
    const-string/jumbo v4, "1"

    goto :goto_2

    .line 2137
    :cond_6
    invoke-static {p0, v8}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v6

    .line 2083
    const-wide/16 v8, 0x4

    cmp-long v5, v6, v8

    if-eqz v5, :cond_7

    const-wide/16 v8, 0x5

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    .line 2084
    :cond_7
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 2085
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2086
    :cond_8
    invoke-static {p0}, Lddq;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2087
    const-string/jumbo v4, "6"

    goto :goto_2

    .line 2089
    :cond_9
    const-string/jumbo v4, "0"

    goto :goto_2
.end method
