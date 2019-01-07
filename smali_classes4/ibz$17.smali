.class final Libz$17;
.super Lhzy;
.source "MessageRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libz;->a(Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/SendResultModel;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/message/MessageImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Libz;


# direct methods
.method constructor <init>(Libz;Lcom/alibaba/wukong/Callback;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Libz;

    .prologue
    .line 303
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/message/MessageImpl;>;>;"
    iput-object p1, p0, Libz$17;->c:Libz;

    iput-object p3, p0, Libz$17;->a:Ljava/util/Map;

    iput-object p4, p0, Libz$17;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public final synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 303
    check-cast p1, Ljava/util/List;

    .line 1307
    if-nez p1, :cond_0

    .line 1308
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1310
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;

    .line 1312
    iget-object v1, p0, Libz$17;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->uuid:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1313
    if-eqz v1, :cond_1

    .line 1314
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v4

    .line 1315
    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 1316
    invoke-static {v4}, Libw;->a(Lcom/alibaba/wukong/im/message/MessageImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1317
    invoke-static {v4}, Libw;->b(Lcom/alibaba/wukong/im/message/MessageImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1318
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v5, p0, Libz$17;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1319
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->uuid:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 1320
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 1321
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->messageId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 1322
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->createdAt:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 1323
    iget-wide v6, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v6, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 1324
    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 1325
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 1326
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    .line 1327
    if-eqz v1, :cond_2

    .line 1328
    iget-object v1, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 1329
    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/SendResultModel;->model:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, v4, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 1331
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1332
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move-object v0, v2

    .line 303
    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lhzy;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method
