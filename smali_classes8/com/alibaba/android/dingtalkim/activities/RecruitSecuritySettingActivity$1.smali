.class final Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;
.super Ljava/lang/Object;
.source "RecruitSecuritySettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    if-eqz p1, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    .line 68
    :cond_1
    return-void

    .line 1076
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
