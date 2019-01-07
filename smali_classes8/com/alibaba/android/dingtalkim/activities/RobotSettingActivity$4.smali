.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 537
    check-cast p1, Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 1543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->j(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v0

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->url:Ljava/lang/String;

    .line 1545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->l(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->k(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 1547
    sget v0, Lctk$i;->dt_robot_tips_token_updated:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 537
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 558
    const-string/jumbo v0, "imrobot"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "resetBot onException: code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 559
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 561
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 554
    return-void
.end method
