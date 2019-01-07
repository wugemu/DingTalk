.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$2;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->b(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lapq$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapq$b;->b(J)V

    .line 431
    return-void
.end method
