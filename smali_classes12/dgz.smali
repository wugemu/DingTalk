.class public final Ldgz;
.super Ljava/lang/Object;
.source "SubConversationConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldgz$b;,
        Ldgz$a;
    }
.end annotation


# instance fields
.field public a:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/Long;",
            "Ldsd;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ldgz$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/wukong/im/ConversationChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lfq;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    iput-object v0, p0, Ldgz;->a:Lfq;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldgz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    new-instance v0, Ldgz$2;

    invoke-direct {v0, p0}, Ldgz$2;-><init>(Ldgz;)V

    iput-object v0, p0, Ldgz;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 43
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Ldgz;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ldgz;-><init>()V

    return-void
.end method

.method static synthetic a(Ldgz;Ljava/util/List;)V
    .locals 9
    .param p0, "x0"    # Ldgz;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v1, 0x1

    .line 28
    .line 1151
    invoke-static {}, Ldgy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    .line 1157
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    .line 1158
    new-array v3, v1, [Ldsd;

    .line 1159
    new-instance v5, Ldsd;

    invoke-direct {v5}, Ldsd;-><init>()V

    .line 1161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Conversation;

    .line 1162
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Ldgz;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldgz$b;

    .line 1165
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getEntranceCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1166
    if-eqz v6, :cond_2

    .line 1167
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Ldgz$b;->a(Ljava/lang/String;Ldsd;)V

    goto :goto_0

    .line 1172
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Ldgz$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldgz$3;-><init>(Ldgz;[Ljava/lang/String;[Ldsd;Lcom/alibaba/wukong/im/Conversation;Ldsd;Ldgz$b;)V

    .line 1206
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getEntranceCid()Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-interface {v7, v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method
