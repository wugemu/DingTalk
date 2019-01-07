.class public Lcom/taobao/taolive/sdk/component/ChatFrame;
.super Lcom/taobao/taolive/sdk/component/BaseFrame;
.source "ChatFrame.java"


# static fields
.field private static final DEFAULT_GET_CHAT_MESSAGES_COUNT:I = 0xa


# instance fields
.field private mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

.field private mCid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/alibaba/wukong/im/Conversation;

.field private mIsAttached:Z

.field private mIsGetStartSysMsg:Z

.field private mIsWaitForStartSysMsg:Z

.field private mLiveLinkCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveUuid:Ljava/lang/String;

.field private mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewState:I

.field private messageListener:Lcom/alibaba/wukong/im/MessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "liveUuid"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "liveUuid"    # Ljava/lang/String;
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/component/BaseFrame;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mRecyclerViewState:I

    .line 66
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mCid:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveUuid:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/taobao/taolive/sdk/component/ChatFrame;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mRecyclerViewState:I

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/taolive/sdk/component/ChatFrame;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/taobao/taolive/sdk/component/ChatFrame;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLastMessages(Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/taolive/sdk/component/ChatFrame;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/taolive/sdk/component/ChatFrame;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->filterMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/taolive/sdk/component/ChatFrame;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->registerIMService()V

    return-void
.end method

.method static synthetic access$600(Lcom/taobao/taolive/sdk/component/ChatFrame;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/taolive/sdk/component/ChatFrame;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveLinkCids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/taobao/taolive/sdk/component/ChatFrame;)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/taobao/taolive/sdk/component/ChatFrame;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/component/ChatFrame;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private filterMessage(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    .end local p1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 189
    .restart local p1    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    :cond_1
    iget-object v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveUuid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsGetStartSysMsg:Z

    if-nez v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-virtual {v5}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->getItemCount()I

    move-result v5

    if-gtz v5, :cond_0

    .line 198
    :cond_2
    const/4 v1, 0x0

    .line 199
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/Message;

    .line 200
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v6, v7, :cond_5

    .line 201
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 202
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v0

    .line 203
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 206
    const-string/jumbo v6, "liveState"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "liveState":Ljava/lang/String;
    const-string/jumbo v6, "liveUuid"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, "liveUuid":Ljava/lang/String;
    iget-object v6, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveUuid:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "1"

    .line 210
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 211
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsGetStartSysMsg:Z

    .line 218
    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "liveState":Ljava/lang/String;
    .end local v3    # "liveUuid":Ljava/lang/String;
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_6

    .line 219
    iget-boolean v5, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsWaitForStartSysMsg:Z

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 215
    .restart local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 216
    goto :goto_1

    .line 220
    .end local v4    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_6
    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private getConversation()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/taobao/taolive/sdk/component/ChatFrame$2;

    invoke-direct {v1, p0}, Lcom/taobao/taolive/sdk/component/ChatFrame$2;-><init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mCid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private getLastMessages()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mCid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getConversation()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLastMessages(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method private getLastMessages(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->registerIMService()V

    .line 183
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "cid":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xa

    new-instance v4, Lcom/taobao/taolive/sdk/component/ChatFrame$3;

    invoke-direct {v4, p0, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame$3;-><init>(Lcom/taobao/taolive/sdk/component/ChatFrame;Ljava/lang/String;)V

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/Conversation;->listPreviousMessages(Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method private registerIMService()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    new-instance v0, Lcom/taobao/taolive/sdk/component/ChatFrame$4;

    invoke-direct {v0, p0}, Lcom/taobao/taolive/sdk/component/ChatFrame$4;-><init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->messageListener:Lcom/alibaba/wukong/im/MessageListener;

    .line 258
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->messageListener:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 260
    return-void
.end method

.method private unRegisterIMService()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->messageListener:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 263
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    new-instance v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;-><init>()V

    .line 295
    .local v0, "barrages":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->liveContent:Ljava/lang/String;

    .line 296
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->timestamp:J

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0, v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 302
    .end local v0    # "barrages":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->reset()V

    .line 306
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->unRegisterIMService()V

    .line 307
    iput-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mContext:Landroid/content/Context;

    .line 308
    iput-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsAttached:Z

    .line 310
    return-void
.end method

.method public getLiveLinkCids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveLinkCids:Ljava/util/List;

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewStub;)V
    .locals 4
    .param p1, "viewStub"    # Landroid/view/ViewStub;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    sget v1, Lbtp$f;->taolive_frame_message:I

    invoke-virtual {p1, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    new-instance v1, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    .line 78
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 81
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 84
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/taobao/taolive/sdk/component/ChatFrame$1;

    invoke-direct {v2, p0}, Lcom/taobao/taolive/sdk/component/ChatFrame$1;-><init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 92
    iput-boolean v3, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsAttached:Z

    .line 94
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    return-void
.end method

.method public onGetMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->addItems(Ljava/util/List;)V

    .line 285
    iget v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mRecyclerViewState:I

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-virtual {v1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mCid:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mAdapter:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    invoke-virtual {v0}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->clear()V

    .line 273
    :cond_1
    return-void
.end method

.method public scrollToEnd()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/taobao/taolive/sdk/component/ChatFrame$5;

    invoke-direct {v1, p0}, Lcom/taobao/taolive/sdk/component/ChatFrame$5;-><init>(Lcom/taobao/taolive/sdk/component/ChatFrame;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    :cond_0
    return-void
.end method

.method public setLiveLinkCids(Ljava/util/List;)V
    .locals 0
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
    .line 97
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mLiveLinkCids:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setWaitForStartSysMsg(Z)V
    .locals 0
    .param p1, "isWaitForStartMsg"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mIsWaitForStartSysMsg:Z

    .line 106
    return-void
.end method

.method public startListenMessage(Z)V
    .locals 0
    .param p1, "fetchLastMessage"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLastMessages()V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->registerIMService()V

    goto :goto_0
.end method

.method public switchVisibility()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/taobao/taolive/sdk/component/ChatFrame;->mMsgRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 333
    const/4 v0, 0x1

    goto :goto_0
.end method
