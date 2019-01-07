.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;


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
    .line 568
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZLandroid/view/View;)V
    .locals 2
    .param p1, "dateInt"    # I
    .param p2, "isCurrentMonth"    # Z
    .param p3, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->o(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$3;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;IZ)V

    .line 574
    :cond_0
    return-void
.end method
