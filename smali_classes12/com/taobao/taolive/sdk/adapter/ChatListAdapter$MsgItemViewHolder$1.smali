.class Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;
.super Ljava/lang/Object;
.source "ChatListAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->bindNormalMsg(Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

.field final synthetic val$msg:Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;JLcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->this$1:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    iput-wide p2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->val$uid:J

    iput-object p4, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->val$msg:Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v2, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->val$uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->this$1:Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;

    iget-object v1, p0, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->val$msg:Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;

    invoke-static {v0, v1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;->access$300(Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder;Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;)V

    .line 150
    :cond_0
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, p1}, Lcom/taobao/taolive/sdk/adapter/ChatListAdapter$MsgItemViewHolder$1;->onDataReceived(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 155
    return-void
.end method
