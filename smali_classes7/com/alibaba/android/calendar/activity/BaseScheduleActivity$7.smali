.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;
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
    .line 214
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->d(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$7;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;

    move-result-object v0

    invoke-interface {v0}, Lapq$b;->c()V

    .line 221
    :cond_0
    return-void
.end method
