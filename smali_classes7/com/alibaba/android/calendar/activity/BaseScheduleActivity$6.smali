.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$6;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v1, v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lapq$b;->a(Z)V

    .line 211
    :cond_0
    return-void
.end method
