.class public abstract Ldkt;
.super Ljava/lang/Object;
.source "BaseConversationAggregation.java"


# static fields
.field private static d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/wukong/im/Message;

.field public c:I

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:Ldyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldyr",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldyr",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldkt;->d:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldkt;->h:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldkt;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method static synthetic a(Ldkt;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Ldkt;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 34
    iput-object p1, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Ldkt;)V
    .locals 1
    .param p0, "x0"    # Ldkt;

    .prologue
    .line 34
    .line 2133
    new-instance v0, Ldkt$2;

    invoke-direct {v0, p0}, Ldkt$2;-><init>(Ldkt;)V

    iput-object v0, p0, Ldkt;->g:Ldyr;

    .line 2162
    iget-object v0, p0, Ldkt;->g:Ldyr;

    invoke-virtual {p0, v0}, Ldkt;->a(Lcom/alibaba/wukong/Callback;)V

    .line 34
    return-void
.end method

.method static synthetic a(Ldkt;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ldkt;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ldkt;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ldkt;Z)Z
    .locals 1
    .param p0, "x0"    # Ldkt;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldkt;->i:Z

    return v0
.end method

.method static synthetic b(Ldkt;Z)V
    .locals 0
    .param p0, "x0"    # Ldkt;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ldkt;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_1

    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldkt;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3
    .param p1, "isFromCreate"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Ldkt;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Ldkt;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 122
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 126
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Ldkt;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    :cond_2
    iget-object v1, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v1}, Ldkt;->b(Lcom/alibaba/wukong/im/Conversation;)V

    .line 129
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method static synthetic c(Ldkt;Z)V
    .locals 0
    .param p0, "x0"    # Ldkt;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ldkt;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 10
    .param p1, "forceVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 206
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "refreshResultImpl but mAggregationConversation is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldkt;->b(Ljava/lang/String;)V

    .line 1372
    :cond_0
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_3

    .line 208
    :goto_0
    if-eqz v2, :cond_2

    .line 209
    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->updateToVisible()V

    .line 214
    :cond_1
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liau;->g(Lcom/alibaba/wukong/im/Conversation;)V

    .line 215
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Liau;->f(Lcom/alibaba/wukong/im/Conversation;)V

    .line 217
    :cond_2
    return-void

    .line 1375
    :cond_3
    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    .line 1376
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1377
    :cond_4
    iput-object v4, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    .line 1378
    iput v2, p0, Ldkt;->c:I

    .line 1404
    :cond_5
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->setLastMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 1405
    iget-object v0, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    iget v1, p0, Ldkt;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->setUnreadCount(I)V

    move v2, v3

    .line 1406
    goto :goto_0

    .line 1383
    :cond_6
    iput v2, p0, Ldkt;->c:I

    .line 1384
    iput-object v4, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    .line 1385
    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1386
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1387
    if-eqz v0, :cond_7

    .line 1388
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    .line 1389
    :goto_2
    iget v5, p0, Ldkt;->c:I

    add-int/2addr v1, v5

    iput v1, p0, Ldkt;->c:I

    .line 1391
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 1392
    iget-object v1, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    if-nez v1, :cond_9

    .line 1393
    iput-object v0, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    :cond_8
    move v1, v2

    .line 1388
    goto :goto_2

    .line 1396
    :cond_9
    if-eqz v0, :cond_7

    .line 1399
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v6

    iget-object v1, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-lez v1, :cond_7

    .line 1400
    iput-object v0, p0, Ldkt;->b:Lcom/alibaba/wukong/im/Message;

    goto :goto_1
.end method

.method private g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    .local p1, "subConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 197
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    iget-object v2, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v0, p0, Ldkt;->f:Ldyr;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Ldkt;->f:Ldyr;

    invoke-interface {v0}, Ldyr;->a()V

    .line 169
    iput-object v1, p0, Ldkt;->f:Ldyr;

    .line 171
    :cond_0
    iget-object v0, p0, Ldkt;->g:Ldyr;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Ldkt;->g:Ldyr;

    invoke-interface {v0}, Ldyr;->a()V

    .line 173
    iput-object v1, p0, Ldkt;->g:Ldyr;

    .line 175
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldkt;->i:Z

    .line 176
    return-void
.end method

.method protected abstract a(Lcom/alibaba/wukong/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 415
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0}, Ldkt;->a()V

    .line 62
    invoke-virtual {p0, p1}, Ldkt;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "subConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 65
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    .line 66
    iget-object v3, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 73
    :cond_2
    iget-object v2, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldkt;->a(Z)V

    .line 76
    :cond_3
    return-void
.end method

.method a(Z)V
    .locals 4
    .param p1, "forceVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 324
    invoke-direct {p0, p1}, Ldkt;->c(Z)V

    goto :goto_0

    .line 326
    :cond_2
    new-instance v0, Ldkt$3;

    invoke-direct {v0, p0, p1}, Ldkt$3;-><init>(Ldkt;Z)V

    .line 333
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Ldkt;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    iget-boolean v1, p0, Ldkt;->i:Z

    if-nez v1, :cond_0

    .line 2082
    iget-object v1, p0, Ldkt;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_3

    .line 2083
    iput-boolean v2, p0, Ldkt;->i:Z

    .line 2084
    invoke-direct {p0, v2}, Ldkt;->b(Z)V

    goto :goto_0

    .line 2087
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldkt;->i:Z

    .line 2088
    new-instance v1, Ldkt$1;

    invoke-direct {v1, p0}, Ldkt$1;-><init>(Ldkt;)V

    iput-object v1, p0, Ldkt;->f:Ldyr;

    .line 2116
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Ldkt;->f:Ldyr;

    invoke-virtual {p0}, Ldkt;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Ldkt;->a()V

    .line 311
    sget-object v0, Ldkt;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 312
    return-void
.end method

.method protected abstract b(Lcom/alibaba/wukong/im/Conversation;)V
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0, p1}, Ldkt;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "subConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0, p1}, Ldkt;->f(Ljava/util/List;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    .line 181
    .local v0, "aggregationConversion":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-direct {p0, v1}, Ldkt;->g(Ljava/util/List;)V

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 184
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ldkt;->a(Z)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    if-eqz v0, :cond_0

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ldkt;->a(Z)V

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v8, 0x1

    .line 220
    invoke-virtual {p0, p1}, Ldkt;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "subConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 223
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    iget-object v3, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Ldkt;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_1
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "delete shopping conversation"

    aput-object v7, v5, v6

    .line 231
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, ",but not record"

    aput-object v7, v5, v6

    .line 230
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 235
    invoke-virtual {p0, v8}, Ldkt;->a(Z)V

    .line 237
    :cond_3
    return-void
.end method

.method public abstract c(Lcom/alibaba/wukong/im/Conversation;)Z
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-virtual {p0, p1}, Ldkt;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "subConversationList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-direct {p0, v0}, Ldkt;->g(Ljava/util/List;)V

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ldkt;->a(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public abstract d(Lcom/alibaba/wukong/im/Conversation;)Z
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract e(Ljava/util/List;)Ljava/util/List;
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
.end method

.method protected abstract f(Ljava/util/List;)Lcom/alibaba/wukong/im/Conversation;
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
.end method
