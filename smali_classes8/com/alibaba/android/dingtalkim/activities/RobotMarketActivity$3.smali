.class final Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;
.super Ljava/lang/Object;
.source "RobotMarketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    const-wide/16 v4, 0x7530

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLandroid/os/Bundle;)V

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "bots_template_id"

    const-string/jumbo v2, "30000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_botstore_top_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    return-void
.end method
