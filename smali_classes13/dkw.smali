.class public final Ldkw;
.super Ldkt;
.source "ShoppingAggregationV2.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ldkt;-><init>()V

    .line 30
    invoke-static {}, Ldzb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkw;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "createConversationCallback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "scheme"

    const-string/jumbo v4, "https://qr.dingtalk.com/page/member_messages"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 38
    .local v1, "param":Lcom/alibaba/wukong/im/CreateConversationParams;
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 41
    invoke-virtual {v1, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 42
    const-wide/16 v4, 0x6

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/32 v4, 0x188b95b1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 47
    invoke-virtual {v1, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setForceRpcIfLocalNotExist(Z)V

    .line 48
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v3, p1, v1}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    .line 49
    return-void
.end method

.method protected final b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "aggregationConversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v1, "https://qr.dingtalk.com/page/member_messages"

    const-string/jumbo v2, "scheme"

    .line 58
    invoke-interface {p1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "scheme"

    const-string/jumbo v2, "https://qr.dingtalk.com/page/member_messages"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateExtensionByKeys(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 87
    invoke-static {p1}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ldkw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 92
    .line 2032
    invoke-static {p1}, Libb;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 92
    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "[ShoppingAggregationManager]"

    return-object v0
.end method

.method protected final e(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    .line 1045
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1048
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1050
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1051
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1052
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 1053
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method protected final f(Ljava/util/List;)Lcom/alibaba/wukong/im/Conversation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)",
            "Lcom/alibaba/wukong/im/Conversation;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v1, 0x0

    .line 72
    .line 1064
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1074
    :goto_0
    return-object v0

    .line 1068
    :cond_1
    invoke-static {}, Ldzb;->a()Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1070
    if-eqz v0, :cond_2

    .line 1073
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 72
    goto :goto_0
.end method
