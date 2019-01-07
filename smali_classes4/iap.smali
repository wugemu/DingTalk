.class public final Liap;
.super Ljava/lang/Object;
.source "CategoryTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "defaultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x4

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x2

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    const-wide/16 v2, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/wukong/im/category/CategoryObject;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    new-instance v1, Liap$1;

    invoke-direct {v1}, Liap$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Liav;->c(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x6

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 43
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xd

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;ZJ)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "systemCategory"    # Z
    .param p2, "categoryId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-eqz p1, :cond_9

    .line 108
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v2

    invoke-static {v2, v3}, Liap;->a(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 109
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 110
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 111
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {p0}, Liap;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const-wide/16 v2, 0x6

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 116
    :cond_3
    invoke-static {p0}, Liap;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    const-wide/16 v2, 0x2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 119
    :cond_4
    invoke-static {p0}, Liap;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    const-wide/16 v2, 0x3

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 122
    :cond_5
    invoke-static {p0}, Liap;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    const-wide/16 v2, 0x4

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 125
    :cond_6
    const-wide/16 v2, 0x5

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 126
    :cond_7
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    move v0, v1

    .line 127
    goto :goto_0

    :cond_8
    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_9
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 133
    goto/16 :goto_0
.end method

.method public static b(J)Z
    .locals 2
    .param p0, "categoryId"    # J

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x6

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 161
    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    if-nez p0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 57
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x9

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
