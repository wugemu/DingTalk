.class final Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;
.super Ljava/lang/Object;
.source "ChannelMsgListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->g()V
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
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqo;

    .line 272
    .local v0, "channelFilterModel":Ldqo;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(JJZ)V

    .line 273
    if-eqz v0, :cond_0

    .line 1022
    iget-object v1, v0, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 274
    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    .line 2022
    iget-object v2, v0, Ldqo;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    .line 275
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChannelMsgListActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .end local v0    # "channelFilterModel":Ldqo;
    :cond_1
    return-void
.end method
