.class final Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;
.super Ljava/lang/Object;
.source "ChannelMsgListActivity.java"

# interfaces
.implements Lecf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;
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
    .line 293
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 296
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldqo;

    .line 1022
    .local v7, "filterModel":Ldqo;
    iget-object v0, v7, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 298
    .local v0, "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;J)J

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;I)V

    .line 2014
    iget-boolean v1, v7, Ldqo;->c:Z

    .line 306
    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2018
    :cond_0
    iput-boolean v6, v7, Ldqo;->c:Z

    .line 311
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lecf;

    move-result-object v1

    invoke-virtual {v1}, Lecf;->b()V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->n()V

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(JJZ)V

    .line 317
    return-void

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;J)J

    goto :goto_0
.end method
