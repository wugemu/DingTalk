.class final Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;
.super Ljava/lang/Object;
.source "RobotMarketActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, p3, v4

    .line 251
    .local v0, "adapterPosition":I
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$a;->a(I)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v3

    .line 255
    .local v3, "object":Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    if-eqz v3, :cond_3

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 258
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 259
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "conversation"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 261
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLandroid/os/Bundle;)V

    .line 264
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v2, "extraStatistics":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 266
    const-string/jumbo v4, "ding_group_id"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4
    if-eqz v3, :cond_5

    .line 269
    const-string/jumbo v4, "bots_template_id"

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->templateId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "im_bot_botlist_botcell_click"

    invoke-interface {v4, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
