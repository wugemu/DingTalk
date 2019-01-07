.class final Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;
.super Ljava/lang/Object;
.source "RecruitSecuritySettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;
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
        "Lcom/alibaba/wukong/im/Blacklist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->g(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    check-cast p1, Lcom/alibaba/wukong/im/Blacklist;

    .line 1108
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Blacklist;->getOpenId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1112
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Blacklist;->getStatus()Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Blacklist;->getStatus()Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    if-ne v0, v1, :cond_2

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1117
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->g(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    .line 105
    :cond_1
    return-void

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2$1;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method
