.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;
.super Ljava/lang/Object;
.source "ChannelDetailActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 698
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 664
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1667
    if-eqz p1, :cond_3

    .line 1668
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channel"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1669
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1679
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1680
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1683
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->hasUnreadAtMeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateAtMeStatus(Z)V

    .line 1686
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1687
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "at_uid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;)V

    .line 664
    :cond_3
    return-void
.end method
