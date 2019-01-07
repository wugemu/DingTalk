.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "action_cancel_follow_channel"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const-string/jumbo v3, "org_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 94
    .local v4, "orgId":J
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .line 98
    .local v1, "channelRequestModel":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v3, v3, Lcfi;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 100
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Lcuc;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)Lcuc;

    move-result-object v3

    invoke-virtual {v3}, Lcuc;->notifyDataSetChanged()V

    .line 107
    .end local v1    # "channelRequestModel":Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity;)V

    .line 109
    .end local v4    # "orgId":J
    :cond_2
    return-void
.end method
