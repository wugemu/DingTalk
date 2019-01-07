.class public final Ldkv;
.super Ldkt;
.source "CampusStudentAggregation.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ldwt;

.field private g:Ldwq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ldkt;-><init>()V

    .line 31
    const-string/jumbo v0, "[CampusStudentAggregation]"

    iput-object v0, p0, Ldkv;->d:Ljava/lang/String;

    .line 128
    new-instance v0, Ldkv$1;

    invoke-direct {v0, p0}, Ldkv$1;-><init>(Ldkv;)V

    iput-object v0, p0, Ldkv;->g:Ldwq;

    .line 36
    invoke-static {}, Ldyq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldkv;->e:Ljava/lang/String;

    .line 37
    new-instance v0, Ldwt;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldwt;-><init>(I)V

    iput-object v0, p0, Ldkv;->f:Ldwt;

    .line 38
    iget-object v0, p0, Ldkv;->f:Ldwt;

    iget-object v1, p0, Ldkv;->g:Ldwq;

    .line 1214
    iput-object v1, v0, Ldwt;->e:Ldwq;

    .line 39
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

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "scheme"

    const-string/jumbo v4, "https://qr.dingtalk.com/page/im_campus_student_conversations"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 47
    .local v1, "param":Lcom/alibaba/wukong/im/CreateConversationParams;
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 50
    invoke-virtual {v1, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 51
    const-wide/16 v4, 0x6

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTag(J)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/32 v4, 0x1ba4a51b

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v1, v2}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 56
    invoke-virtual {v1, v6}, Lcom/alibaba/wukong/im/CreateConversationParams;->setForceRpcIfLocalNotExist(Z)V

    .line 57
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v3, p1, v1}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    .line 59
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 69
    .line 2114
    invoke-static {p1}, Libb;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldkv;->f:Ldwt;

    invoke-virtual {v0, p1}, Ldwt;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected final b(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "aggregationConversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 64
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 114
    invoke-static {p1}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ldkv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 119
    .line 4068
    invoke-static {p1}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 119
    return v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "[CampusStudentAggregation]"

    return-object v0
.end method

.method protected final e(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 86
    :cond_1
    return-object v1

    .line 80
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 82
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_3

    .line 3068
    invoke-static {v0}, Libb;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final f(Ljava/util/List;)Lcom/alibaba/wukong/im/Conversation;
    .locals 4
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

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 3114
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    invoke-static {v0}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    .line 95
    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_3
    move-object v0, v1

    .line 99
    goto :goto_0
.end method
