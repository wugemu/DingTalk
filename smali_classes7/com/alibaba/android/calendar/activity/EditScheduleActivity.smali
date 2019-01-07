.class public Lcom/alibaba/android/calendar/activity/EditScheduleActivity;
.super Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.source "EditScheduleActivity.java"


# instance fields
.field private e:Lapq$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/calendar/activity/EditScheduleActivity$1;-><init>(Lcom/alibaba/android/calendar/activity/EditScheduleActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->e:Lapq$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    new-instance v0, Lapp;

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->d:Lapq$c;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->e:Lapq$a;

    invoke-direct {v0, v1, p1, v2}, Lapp;-><init>(Lapq$c;Landroid/content/Intent;Lapq$a;)V

    .line 23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Laow$f;->dt_ding_edit_schedule_event:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/calendar/activity/EditScheduleActivity;->setTitle(I)V

    .line 18
    return-void
.end method
