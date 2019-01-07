.class final Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 141
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelListActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->orgId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    return-object p1
.end method
