.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;
.super Landroid/view/ViewGroup;
.source "CalendarWeekDayBar.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a:I

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->b:I

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, -0x1000000

    const/high16 v3, 0x41300000    # 11.0f

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v2, 0x7

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a:I

    .line 29
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->b:I

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->c:F

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcig$l;->CalendarWeekDayBar:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    sget v2, Lcig$l;->CalendarWeekDayBar_week_day_bar_bg_color:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->setBackgroundColor(I)V

    .line 46
    sget v2, Lcig$l;->CalendarWeekDayBar_week_day_bar_text_color:I

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->b:I

    .line 47
    sget v2, Lcig$l;->CalendarWeekDayBar_week_day_bar_text_size:I

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->c:F

    .line 48
    sget v2, Lcig$l;->CalendarWeekDayBar_week_day_bar_padding_top:I

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->d:F

    .line 49
    sget v2, Lcig$l;->CalendarWeekDayBar_week_day_bar_padding_bottom:I

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->e:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a()V

    .line 58
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v2
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->t:[I

    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 104
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->c:F

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->t:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 110
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 111
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 88
    .local v5, "viewChild":Landroid/view/View;
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a:I

    rem-int v0, v1, v6

    .line 89
    .local v0, "columnIndex":I
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a:I

    div-int v4, v1, v6

    .line 91
    .local v4, "rowIndex":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 92
    .local v3, "itemWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 94
    .local v2, "itemHeight":I
    mul-int p2, v0, v3

    .line 95
    mul-int v6, v4, v2

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->d:F

    float-to-int v7, v7

    add-int p3, v6, v7

    .line 96
    add-int p4, p2, v3

    .line 97
    add-int p5, p3, v2

    .line 98
    invoke-virtual {v5, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "columnIndex":I
    .end local v2    # "itemHeight":I
    .end local v3    # "itemWidth":I
    .end local v4    # "rowIndex":I
    .end local v5    # "viewChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 62
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 64
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 81
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 70
    .local v4, "parentWidth":I
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->a:I

    div-int v2, v4, v6

    .line 71
    .local v2, "dayViewItemWidth":I
    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->c:F

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->d:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->e:F

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 73
    .local v1, "dayViewItemHeight":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->setMeasuredDimension(II)V

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar2/CalendarWeekDayBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 78
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, -0x2

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->measure(II)V

    .line 75
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
