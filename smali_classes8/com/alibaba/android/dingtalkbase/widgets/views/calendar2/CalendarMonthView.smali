.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;
.super Landroid/view/ViewGroup;
.source "CalendarMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcsa;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rowCount"    # I

    .prologue
    const/4 v1, 0x6

    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    .line 24
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->d:I

    .line 25
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->e:I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->setWillNotDraw(Z)V

    .line 37
    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->d:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "rowCount"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    .line 24
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->d:I

    .line 25
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->e:I

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->setWillNotDraw(Z)V

    .line 43
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->d:I

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lckq;)Lckq;
    .locals 6
    .param p1, "selectedCalendarBean"    # Lckq;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 96
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v0

    .line 119
    :cond_1
    :goto_0
    return-object v0

    .line 100
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v2, "tempCalendarBean":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckq;

    .line 105
    .local v1, "ret":Lckq;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckq;

    .line 106
    .local v0, "calendarBean":Lckq;
    if-eqz v0, :cond_3

    .line 1054
    iget v4, v0, Lckq;->b:I

    .line 109
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a:I

    if-ne v4, v5, :cond_3

    .line 113
    if-eqz p1, :cond_4

    .line 1058
    iget v4, v0, Lckq;->c:I

    .line 2058
    iget v5, p1, Lckq;->c:I

    .line 114
    if-eq v4, v5, :cond_1

    .line 117
    :cond_4
    move-object v1, v0

    .line 118
    goto :goto_1

    .line 103
    .end local v0    # "calendarBean":Lckq;
    .end local v1    # "ret":Lckq;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1    # "ret":Lckq;
    :cond_5
    move-object v0, v1

    .line 119
    goto :goto_0
.end method

.method public final a(Lckq;Z)V
    .locals 12
    .param p1, "selectedCalendarBean"    # Lckq;
    .param p2, "isCurrentPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, -0x1

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->c:Lcsa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    return-void

    .line 163
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v10, "tempCalendarBean":Ljava/util/List;, "Ljava/util/List<Lckq;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->b:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 168
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lckq;

    .line 170
    .local v4, "bean":Lckq;
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->c:Lcsa;

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->a:I

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lcsa;->a(Landroid/view/View;Landroid/view/ViewGroup;ILckq;Lckq;Z)Landroid/view/View;

    move-result-object v7

    .line 172
    .local v7, "childView":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 175
    if-eq v7, v1, :cond_3

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 177
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v9, :cond_2

    .line 178
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v9, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 180
    .restart local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v8, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 183
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;

    invoke-direct {v0, p0, v4, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;Lckq;Lckq;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "view":Landroid/view/View;
    .end local v4    # "bean":Lckq;
    .end local v7    # "childView":Landroid/view/View;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDayViewItemHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->g:I

    return v0
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
    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 77
    .local v5, "viewChild":Landroid/view/View;
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->e:I

    rem-int v0, v1, v6

    .line 78
    .local v0, "columnIndex":I
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->e:I

    div-int v4, v1, v6

    .line 80
    .local v4, "rowIndex":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 81
    .local v3, "itemWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 83
    .local v2, "itemHeight":I
    mul-int p2, v0, v3

    .line 84
    mul-int p3, v4, v2

    .line 85
    add-int p4, p2, v3

    .line 86
    add-int p5, p3, v2

    .line 87
    invoke-virtual {v5, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "columnIndex":I
    .end local v2    # "itemHeight":I
    .end local v3    # "itemWidth":I
    .end local v4    # "rowIndex":I
    .end local v5    # "viewChild":Landroid/view/View;
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

    .line 48
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 50
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_1

    .line 70
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 56
    .local v3, "parentWidth":I
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->e:I

    div-int v5, v3, v5

    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->f:I

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 59
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iput v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->g:I

    .line 61
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->g:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->d:I

    mul-int/2addr v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->setMeasuredDimension(II)V

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 64
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 66
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->f:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->g:I

    .line 67
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 66
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "i":I
    :cond_3
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->f:I

    goto :goto_0
.end method

.method public setICalendarDayViewAdapter(Lcsa;)V
    .locals 0
    .param p1, "ICalendarDayViewAdapter"    # Lcsa;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->c:Lcsa;

    .line 146
    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$a;

    .line 142
    return-void
.end method

.method public setOnItemSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;)V
    .locals 0
    .param p1, "onItemSelectListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarMonthView$b;

    .line 138
    return-void
.end method
