.class final Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;
.super Ljava/lang/Object;
.source "ChannelMsgListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channelsetting"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$2;)V

    .line 98
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 105
    return-void
.end method
