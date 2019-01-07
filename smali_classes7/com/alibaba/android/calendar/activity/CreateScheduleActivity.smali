.class public Lcom/alibaba/android/calendar/activity/CreateScheduleActivity;
.super Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.source "CreateScheduleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 19
    new-instance v0, Lapo;

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/CreateScheduleActivity;->d:Lapq$c;

    invoke-direct {v0, v1, p1}, Lapo;-><init>(Lapq$c;Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v0, Laow$f;->dt_ding_create_schedule_event:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/CreateScheduleActivity;->setTitle(I)V

    .line 15
    return-void
.end method
