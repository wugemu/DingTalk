.class public Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;
.super Ljava/lang/Object;
.source "LuckyTimePlanMsgManager.java"


# static fields
.field private static final MSG_TYPE_LUCKY_TIME_PLAN:I = 0x38a

.field private static mInstance:Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;


# instance fields
.field private mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mInstance:Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mInstance:Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mInstance:Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public receiver(Lcom/alibaba/wukong/im/message/MessageImpl;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0, v0}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->receivers(Ljava/util/List;)V

    goto :goto_0
.end method

.method public receivers(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "luckyTimeMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v2, p0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 59
    .local v1, "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x38a

    if-ne v3, v4, :cond_2

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/message/MessageImpl;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v3, v4, :cond_2

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    .end local v1    # "message":Lcom/alibaba/wukong/im/message/MessageImpl;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    invoke-interface {v2, v0}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;->receiver(Ljava/util/List;)V

    goto :goto_0
.end method

.method public remove(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;->remove(Lcom/alibaba/wukong/im/Message;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setListener(Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->mLuckyTimePlanMsgListener:Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    .line 37
    return-void
.end method
