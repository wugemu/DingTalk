.class final Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;
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
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
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
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

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
    .line 153
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 1157
    if-eqz p1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->d(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->e(Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity$6;->a:Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotSettingActivity;->dismissLoadingDialog()V

    .line 173
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 168
    return-void
.end method
