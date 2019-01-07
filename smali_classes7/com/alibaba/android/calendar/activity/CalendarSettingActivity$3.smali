.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;
.super Ljava/lang/Object;
.source "CalendarSettingActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 482
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarSettingActivity] isAliMailLoginSuccess onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 460
    check-cast p1, Ljava/lang/Boolean;

    .line 1463
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .line 2022
    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 1463
    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->a(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;Z)Z

    .line 1464
    const-string/jumbo v1, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1465
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[CalendarSettingActivity] isAliMailLoginSuccess isLoginSuccess="

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .line 1466
    invoke-static {v3}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->o(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string/jumbo v4, ", mIsFirstSettingAliMail="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1465
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1468
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1473
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->o(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1474
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 1476
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$3;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->p(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_1
    return-void

    .line 1476
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
