.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$14;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;


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
    .line 498
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$14;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x7

    return v0
.end method

.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "oldView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 512
    if-nez p3, :cond_0

    .line 513
    iget-object v2, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$14;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    sget v3, Ledz$g;->activity_attendance_calendar_week:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, "view":Landroid/view/View;
    :goto_0
    sget v2, Ledz$f;->calendar_week_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 518
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->a()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 519
    return-object v1

    .line 515
    .end local v0    # "tv":Landroid/widget/TextView;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move-object v1, p3

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    return v0
.end method
