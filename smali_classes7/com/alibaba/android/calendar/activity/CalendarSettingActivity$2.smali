.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;
.super Ljava/lang/Object;
.source "CalendarSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 439
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 443
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v1

    sget v2, Laow$b;->ding_calendar_popup_max_width:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(I)V

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    add-int v0, v1, v2

    .line 452
    .local v0, "offsetX":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[CalendarSettingActivity] showSettingAliMailNotOpenTips offsetX="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->n(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$2;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindowTips;->a(Landroid/view/View;II)V

    goto :goto_0
.end method
