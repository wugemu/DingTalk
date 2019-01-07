.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;
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
    .line 169
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 169
    :cond_0
    return-void
.end method
