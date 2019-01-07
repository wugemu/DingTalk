.class final Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;
.super Ljava/lang/Object;
.source "ChannelMsgListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 129
    if-nez p2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldqo;

    .line 1022
    .local v7, "filterModel":Ldqo;
    iget-object v0, v7, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 136
    .local v0, "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;J)J

    .line 141
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;I)V

    .line 2014
    iget-boolean v1, v7, Ldqo;->c:Z

    .line 144
    if-eqz v1, :cond_0

    .line 2018
    iput-boolean v6, v7, Ldqo;->c:Z

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lecf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Lecf;

    move-result-object v1

    invoke-virtual {v1}, Lecf;->b()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->n()V

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(JJZ)V

    .line 153
    return-void

    .line 132
    .end local v0    # "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .end local v7    # "filterModel":Ldqo;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 139
    .restart local v0    # "channelAppModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;
    .restart local v7    # "filterModel":Ldqo;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->senderUid:J

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;J)J

    goto :goto_1
.end method
