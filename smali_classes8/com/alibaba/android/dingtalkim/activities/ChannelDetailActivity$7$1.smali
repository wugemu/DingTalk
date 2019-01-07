.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;
.super Ljava/lang/Object;
.source "ChannelDetailActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 672
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$7$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 674
    return-object p1
.end method
