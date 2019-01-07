.class final Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;
.super Ljava/lang/Object;
.source "GroupRobotListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 322
    check-cast p1, Ljava/lang/Integer;

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->dismissLoadingDialog()V

    .line 1326
    if-eqz p1, :cond_1

    .line 1327
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$a;->getCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1330
    sget v0, Lctk$i;->dt_robot_group_robot_over_limit:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1333
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1334
    const-string/jumbo v1, "ding_group_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "im_bot_botadd_over3error_show"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1337
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->dismissLoadingDialog()V

    .line 351
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupRobotListActivity;)V

    .line 353
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 346
    return-void
.end method
