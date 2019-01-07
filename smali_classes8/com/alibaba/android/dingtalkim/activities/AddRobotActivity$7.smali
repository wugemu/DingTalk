.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->g()V
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
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 369
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1373
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->dismissLoadingDialog()V

    .line 1374
    if-eqz p1, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 1376
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->e(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .line 1378
    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->f(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/CreateBotObject;->mCid:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1377
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1395
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->finish()V

    :goto_1
    return-void

    .line 1380
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .line 1381
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/conversation/add_robot_complete.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 1382
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1397
    :cond_1
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "createRobot failed, botObject is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 408
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "createRobot onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 409
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->dismissLoadingDialog()V

    .line 411
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 404
    return-void
.end method
