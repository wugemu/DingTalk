.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "monthInt"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->p(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->q(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarViewPager;->setTranslationY(F)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$4;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->b(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;I)V

    .line 584
    return-void
.end method
