.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;
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
    .line 507
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->b(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 512
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$4;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->c(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)V

    .line 513
    return-void
.end method
