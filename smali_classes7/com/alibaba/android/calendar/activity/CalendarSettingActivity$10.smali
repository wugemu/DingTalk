.class final Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;
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
    .line 293
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->i(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->j(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity$10;->a:Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;->h(Lcom/alibaba/android/calendar/activity/CalendarSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void

    :cond_0
    move v0, v2

    .line 296
    goto :goto_0

    :cond_1
    move v1, v2

    .line 297
    goto :goto_1
.end method
