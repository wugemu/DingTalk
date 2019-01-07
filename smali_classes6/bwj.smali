.class public final Lbwj;
.super Ljava/lang/Object;
.source "LiveSyncEventListener.java"

# interfaces
.implements Lcom/alibaba/wukong/sync/SyncEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p0, :cond_0

    move-object v0, v2

    .line 79
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    .line 68
    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "floatWindowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    if-nez v1, :cond_1

    move-object v0, v2

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    .line 74
    .local v0, "floatWindowObject":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->extension:Lcom/google/gson/JsonObject;

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;->type:I

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->LIVING:Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;

    iget v5, v5, Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject$FloatWindowType;->type:I

    if-ne v4, v5, :cond_2

    goto :goto_0

    .end local v0    # "floatWindowObject":Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;
    :cond_3
    move-object v0, v2

    .line 79
    goto :goto_0
.end method

.method static synthetic a(Lbwj;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lbwj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    .line 1083
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1087
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1088
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1089
    invoke-static {v0}, Lbwj;->a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;

    move-result-object v3

    .line 1090
    if-eqz v3, :cond_2

    .line 1091
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1092
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 31
    goto :goto_0
.end method

.method static synthetic b(Lbwj;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lbwj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    .line 1101
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance v0, Liav;

    invoke-direct {v0}, Liav;-><init>()V

    new-instance v1, Lbwj$2;

    invoke-direct {v1, p0, p1}, Lbwj$2;-><init>(Lbwj;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Liav;->c(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method static synthetic c(Lbwj;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lbwj;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    .line 1135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lbwj$3;

    invoke-direct {v1, p0}, Lbwj$3;-><init>(Lbwj;)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversations(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final onTooLong2(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 3
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 39
    :cond_0
    new-instance v0, Lbwj$1;

    invoke-direct {v0, p0}, Lbwj$1;-><init>(Lbwj;)V

    .line 58
    .local v0, "callback":Lcom/alibaba/wukong/Callback;
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->listLocalGroupConversations(Lcom/alibaba/wukong/Callback;I)V

    .line 60
    return-void
.end method
