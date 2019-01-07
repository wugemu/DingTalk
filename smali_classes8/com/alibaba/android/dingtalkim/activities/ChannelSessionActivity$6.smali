.class final Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "ChannelSessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "action_cancel_follow_channel"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    const-string/jumbo v6, "org_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 393
    .local v4, "orgId":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 394
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 395
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 396
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;

    .line 397
    .local v2, "channelOrgSessionModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    if-eqz v6, :cond_0

    .line 398
    iget-object v1, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;->channelOrgModel:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 399
    .local v1, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .line 400
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 405
    .end local v1    # "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    .end local v2    # "channelOrgSessionModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgSessionModel;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelSessionActivity;)V

    .line 408
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "orgId":J
    :cond_2
    return-void
.end method
