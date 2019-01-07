.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;
.super Landroid/view/ViewGroup;
.source "CalendarWeekView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcsa;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->c:I

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setWillNotDraw(Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->c:I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setWillNotDraw(Z)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lckq;)Lckq;
    .locals 8
    .param p1, "selectedBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 89
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    .line 90
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    :cond_0
    const/4 v4, 0x0

    .line 110
    :goto_0
    return-object v4

    .line 94
    :cond_1
    if-nez p1, :cond_2

    .line 95
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckq;

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lckq;->a()Ljava/util/Calendar;

    move-result-object v2

    .line 99
    .local v2, "selectedCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 100
    .local v1, "dayOfWeek":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 101
    .local v3, "tempCalendar":Ljava/util/Calendar;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    .line 102
    .local v0, "calendarBean":Lckq;
    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {v0, v3}, Lckq;->b(Ljava/util/Calendar;)V

    .line 106
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v1, :cond_3

    move-object v4, v0

    .line 107
    goto :goto_0

    .line 110
    .end local v0    # "calendarBean":Lckq;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckq;

    goto :goto_0
.end method

.method public final a(Lckq;Z)V
    .locals 11
    .param p1, "selectedCalendarBean"    # Lckq;
    .param p2, "isCurrentPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, -0x1

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->b:Lcsa;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v2, :cond_1

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "CalendarDayViewAdapter is null,please set adapter"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    if-nez v0, :cond_2

    .line 164
    :cond_1
    return-void

    .line 132
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckq;

    .line 135
    .local v4, "bean":Lckq;
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->b:Lcsa;

    .line 1054
    iget v3, p1, Lckq;->b:I

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    .line 136
    invoke-interface/range {v0 .. v6}, Lcsa;->a(Landroid/view/View;Landroid/view/ViewGroup;ILckq;Lckq;Z)Landroid/view/View;

    move-result-object v7

    .line 137
    .local v7, "childView":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 140
    if-eq v7, v1, :cond_4

    .line 141
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 142
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v9, :cond_3

    .line 143
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 145
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v8, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 148
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;

    invoke-direct {v0, p0, v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;Lckq;Lckq;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lckq;)V
    .locals 2
    .param p2, "weekViewSelectedBean"    # Lckq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;",
            "Lckq;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a:Ljava/util/List;

    .line 115
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;)Lckq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->a(Lckq;Z)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->requestLayout()V

    .line 117
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "viewChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 70
    .local v2, "itemWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 72
    .local v1, "itemHeight":I
    mul-int v4, v0, v2

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/view/View;->layout(IIII)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "itemHeight":I
    .end local v2    # "itemWidth":I
    .end local v3    # "viewChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 41
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 43
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 44
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_1

    .line 62
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 49
    .local v3, "parentWidth":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->c:I

    div-int v5, v3, v5

    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->d:I

    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 52
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->e:I

    .line 53
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->e:I

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->setMeasuredDimension(II)V

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 56
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 58
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->d:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->e:I

    .line 59
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 58
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "i":I
    :cond_3
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->d:I

    goto :goto_0
.end method

.method public setICalendarDayViewAdapter(Lcsa;)V
    .locals 0
    .param p1, "ICalendarDayViewAdapter"    # Lcsa;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->b:Lcsa;

    .line 86
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$a;

    .line 82
    return-void
.end method

.method public setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;)V
    .locals 0
    .param p1, "onItemSelectListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekView$b;

    .line 78
    return-void
.end method
