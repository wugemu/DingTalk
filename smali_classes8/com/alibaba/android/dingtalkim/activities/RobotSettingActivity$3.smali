.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;
.super Ljava/lang/Object;
.source "RobotSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 486
    .line 1490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 1491
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Z)V

    .line 1492
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->j(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->status:I

    .line 1494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->k(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 486
    return-void

    .line 1492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 503
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "updateRobotStatus onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 504
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$3;->b:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 506
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 499
    return-void
.end method
