.class public Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChatListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_SIZE:I = 0x1f4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    return-void
.end method

.method static synthetic access$200(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
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
    .line 60
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->notifyDataSetChanged()V

    .line 67
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 55
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->notifyDataSetChanged()V

    .line 57
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->onBindViewHolder(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    .line 85
    .local v0, "msg":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    invoke-static {p1, v0}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->access$000(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    .line 86
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    .locals 5
    .param p1, "arg0"    # Landroid/view/ViewGroup;
    .param p2, "arg1"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbtp$f;->taolive_msg_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;-><init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;Landroid/view/View;Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$1;)V

    .line 92
    .local v0, "holder":Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;
    return-object v0
.end method

.method public removeItem(J)V
    .locals 7
    .param p1, "msgId"    # J

    .prologue
    .line 70
    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    .line 72
    .local v0, "message":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;->message:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 73
    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 74
    .local v1, "position":I
    iget-object v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->mMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, v1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter;->notifyItemRemoved(I)V

    .line 80
    .end local v0    # "message":Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;
    .end local v1    # "position":I
    :cond_1
    return-void
.end method
