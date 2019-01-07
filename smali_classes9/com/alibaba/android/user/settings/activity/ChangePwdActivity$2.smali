.class final Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;
.super Ljava/lang/Object;
.source "ChangePwdActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    check-cast p1, Ljava/lang/Boolean;

    .line 1152
    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1153
    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Z)V

    .line 1156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Z)V

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->dismissLoadingDialog()V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    .line 1483
    iput-boolean v1, v0, Lccr;->b:Z

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    const-string/jumbo v0, "intent_key_change_pwd_from_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SignUpWithPwd"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;->a:Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 174
    return-void
.end method
