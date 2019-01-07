.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;
.super Ljava/lang/Object;
.source "CalendarSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_red_dot"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 241
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_3"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 242
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips_2"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 243
    const-string/jumbo v0, "pref_key_calendar_setting_ali_mail_not_open_tips"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$6;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->d(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    goto :goto_0
.end method
