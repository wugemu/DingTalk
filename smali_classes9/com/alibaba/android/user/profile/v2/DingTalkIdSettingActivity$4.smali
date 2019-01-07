.class final Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;
.super Lcmi;
.source "DingTalkIdSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    const-string/jumbo v0, "applyNewDingtalkId error:%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->dismissLoadingDialog()V

    .line 180
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 150
    .line 1153
    const-string/jumbo v0, "applyNewDingtalkId success"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->dismissLoadingDialog()V

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.did.set.dingtalk.id"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v1, "dingtalk_id"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->c(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1159
    if-eqz v1, :cond_0

    .line 1160
    const-string/jumbo v2, "dingtalk_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    .line 1161
    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mAllowChangeDingTalkId:Z

    .line 1162
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4$1;-><init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1172
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$4;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->finish()V

    .line 150
    return-void
.end method
