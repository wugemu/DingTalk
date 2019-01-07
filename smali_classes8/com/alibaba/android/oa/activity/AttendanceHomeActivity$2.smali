.class final Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;
.super Ljava/lang/Object;
.source "AttendanceHomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;


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
    .line 527
    iput-object p1, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZLandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "dateInt"    # I
    .param p2, "isCurrentMonth"    # Z
    .param p3, "oldView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 532
    if-nez p3, :cond_0

    .line 533
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    sget v6, Ledz$g;->activity_attendance_calendar_day:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 534
    .local v4, "view":Landroid/view/View;
    new-instance v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;

    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-direct {v1, v5, v4}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;-><init>(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;Landroid/view/View;)V

    .line 535
    .local v1, "holder":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 540
    :goto_0
    invoke-static {p1}, Lcrz;->e(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2330
    iget-object v6, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->n(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 542
    invoke-virtual {v1, v9}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b(Z)V

    .line 546
    :goto_1
    invoke-static {}, Lcrz;->b()I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 547
    invoke-virtual {v1, v9}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a(Z)V

    .line 2380
    :goto_2
    if-eqz p2, :cond_3

    .line 2381
    iget-object v5, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 553
    :goto_3
    invoke-static {p1}, Lcrz;->b(I)I

    move-result v3

    .line 554
    .local v3, "monthInt":I
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->m(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 555
    .local v2, "monthDataStatus":Ljava/lang/Integer;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 556
    iget-object v5, p0, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$2;->a:Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;

    invoke-static {v5}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;->l(Lcom/alibaba/android/oa/activity/AttendanceHomeActivity;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 557
    .local v0, "calendarCacheData":Ljava/lang/Boolean;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 558
    invoke-virtual {v1, v9}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c(Z)V

    .line 565
    .end local v0    # "calendarCacheData":Ljava/lang/Boolean;
    :goto_4
    return-object v4

    .line 538
    .end local v1    # "holder":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;
    .end local v2    # "monthDataStatus":Ljava/lang/Integer;
    .end local v3    # "monthInt":I
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    move-object v4, p3

    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;

    .restart local v1    # "holder":Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;
    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {v1, v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->b(Z)V

    goto :goto_1

    .line 549
    :cond_2
    invoke-virtual {v1, v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a(Z)V

    goto :goto_2

    .line 2383
    :cond_3
    iget-object v5, v1, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->a:Landroid/widget/TextView;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 560
    .restart local v0    # "calendarCacheData":Ljava/lang/Boolean;
    .restart local v2    # "monthDataStatus":Ljava/lang/Integer;
    .restart local v3    # "monthInt":I
    :cond_4
    invoke-virtual {v1, v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c(Z)V

    goto :goto_4

    .line 563
    .end local v0    # "calendarCacheData":Ljava/lang/Boolean;
    :cond_5
    invoke-virtual {v1, v8}, Lcom/alibaba/android/oa/activity/AttendanceHomeActivity$b;->c(Z)V

    goto :goto_4
.end method
