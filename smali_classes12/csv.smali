.class public Lcsv;
.super Landroid/view/ViewGroup;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final a:I

.field protected static final b:I


# instance fields
.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcsw;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcsu;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Calendar;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcsf;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcjj;->i:I

    sput v0, Lcsv;->a:I

    .line 30
    sget v0, Lcjj;->i:I

    sput v0, Lcsv;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;I)V
    .locals 2
    .param p1, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;
    .param p2, "firstViewDay"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p3, "firstDayOfWeek"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcsv;->d:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcsv;->e:Ljava/util/Collection;

    .line 1022
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcsv;->f:Ljava/util/Calendar;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcsv;->g:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcsv;->l:I

    .line 56
    iput-object p1, p0, Lcsv;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    .line 57
    iput-object p2, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 58
    iput p3, p0, Lcsv;->h:I

    .line 60
    invoke-virtual {p0, v1}, Lcsv;->setClipChildren(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcsv;->setClipToPadding(Z)V

    .line 63
    invoke-direct {p0}, Lcsv;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcsv;->a(Ljava/util/Calendar;)V

    .line 64
    iget-object v0, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-direct {p0}, Lcsv;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcsv;->a(Ljava/util/Collection;Ljava/util/Calendar;)V

    .line 65
    return-void
.end method

.method private a()Ljava/util/Calendar;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lcsv;->f:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 216
    iget-object v4, p0, Lcsv;->f:Ljava/util/Calendar;

    iget-object v5, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v5

    iget-object v6, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v6

    iget-object v7, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getDay()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 217
    iget-object v4, p0, Lcsv;->f:Ljava/util/Calendar;

    iget v5, p0, Lcsv;->h:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 218
    iget-object v4, p0, Lcsv;->f:Ljava/util/Calendar;

    .line 3038
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 219
    .local v1, "dow":I
    iget v4, p0, Lcsv;->h:I

    sub-int v0, v4, v1

    .line 220
    .local v0, "delta":I
    iget v4, p0, Lcsv;->l:I

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ltz v0, :cond_2

    .line 221
    .local v2, "removeRow":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 222
    add-int/lit8 v0, v0, -0x7

    .line 224
    :cond_1
    iget-object v3, p0, Lcsv;->f:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 225
    iget-object v3, p0, Lcsv;->f:Ljava/util/Calendar;

    return-object v3

    .end local v2    # "removeRow":Z
    :cond_2
    move v2, v3

    .line 220
    goto :goto_0

    :cond_3
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x7

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 207
    new-instance v1, Lcsw;

    invoke-virtual {p0}, Lcsv;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2038
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 207
    invoke-direct {v1, v2, v3}, Lcsw;-><init>(Landroid/content/Context;I)V

    .line 208
    .local v1, "weekDayView":Lcsw;
    iget-object v2, p0, Lcsv;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p0, v1}, Lcsv;->addView(Landroid/view/View;)V

    .line 210
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "weekDayView":Lcsw;
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/util/Calendar;)V
    .locals 6
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcsu;",
            ">;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "dayViews":Ljava/util/Collection;, "Ljava/util/Collection<Lcsu;>;"
    const/4 v5, -0x2

    .line 176
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 1192
    invoke-static {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v2

    .line 1193
    new-instance v3, Lcsu;

    invoke-virtual {p0}, Lcsv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcsu;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V

    .line 1194
    invoke-virtual {v3, p0}, Lcsu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1195
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcsv;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v2, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcsu;

    .line 8168
    .local v1, "dayView":Lcsu;
    iget-object v0, v1, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 299
    .local v0, "day":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    iget v4, p0, Lcsv;->l:I

    iget-object v2, p0, Lcsv;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    iget-object v5, p0, Lcsv;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 301
    invoke-virtual {v0, v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isInRange(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v5

    .line 8184
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v2

    iget-object v6, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v6

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    .line 299
    :goto_1
    invoke-virtual {v1, v4, v5, v2}, Lcsu;->a(IZZ)V

    goto :goto_0

    .line 8184
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 304
    .end local v0    # "day":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .end local v1    # "dayView":Lcsu;
    :cond_1
    invoke-virtual {p0}, Lcsv;->postInvalidate()V

    .line 305
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 9076
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 26
    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 9081
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 26
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 86
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getFirstViewDay()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcsv;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x7

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    instance-of v0, p1, Lcsu;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcsv;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;

    check-cast p1, Lcsu;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/view/CalendarView;->a(Lcsu;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 166
    const-class v0, Lcsv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 172
    const-class v0, Lcsv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-virtual {p0}, Lcsv;->getChildCount()I

    move-result v3

    .line 137
    .local v3, "count":I
    const/4 v2, 0x0

    .line 138
    .local v2, "childTop":I
    sget v7, Lcsv;->a:I

    add-int/lit8 v1, v7, 0x0

    .line 140
    .local v1, "childLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 141
    invoke-virtual {p0, v5}, Lcsv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 144
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 146
    .local v4, "height":I
    add-int v7, v1, v6

    add-int v8, v2, v4

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 148
    add-int/2addr v1, v6

    .line 151
    rem-int/lit8 v7, v5, 0x7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 152
    sget v7, Lcsv;->a:I

    add-int/lit8 v1, v7, 0x0

    .line 153
    add-int/2addr v2, v4

    .line 140
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "height":I
    .end local v6    # "width":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 97
    .local v10, "specWidthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 98
    .local v9, "specWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 99
    .local v8, "specHeightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 101
    .local v7, "specHeightMode":I
    if-eqz v7, :cond_0

    if-nez v9, :cond_1

    .line 102
    :cond_0
    sget v11, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 103
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "CalendarPagerView should never be left to decide it\'s size"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 107
    :cond_1
    sget v11, Lcsv;->a:I

    sub-int v11, v10, v11

    sget v12, Lcsv;->b:I

    sub-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x7

    .line 108
    .local v6, "measureTileWidth":I
    invoke-virtual {p0}, Lcsv;->getRows()I

    move-result v11

    div-int v5, v8, v11

    .line 110
    .local v5, "measureTileHeight":I
    invoke-virtual {p0, v10, v8}, Lcsv;->setMeasuredDimension(II)V

    .line 112
    invoke-virtual {p0}, Lcsv;->getChildCount()I

    move-result v3

    .line 114
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 115
    invoke-virtual {p0, v4}, Lcsv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "child":Landroid/view/View;
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 122
    .local v2, "childWidthMeasureSpec":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 127
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_2
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 243
    iget-object v1, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsu;

    .line 244
    .local v0, "dayView":Lcsu;
    invoke-virtual {p0}, Lcsv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcsu;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 246
    .end local v0    # "dayView":Lcsu;
    :cond_0
    return-void
.end method

.method public setDayFormatter(Lcsm;)V
    .locals 10
    .param p1, "formatter"    # Lcsm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v1, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsu;

    .line 7088
    .local v0, "dayView":Lcsu;
    if-nez p1, :cond_1

    sget-object v1, Lcsm;->a:Lcsm;

    :goto_1
    iput-object v1, v0, Lcsu;->b:Lcsm;

    .line 7089
    invoke-virtual {v0}, Lcsu;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 7090
    const/4 v1, 0x0

    .line 7091
    instance-of v5, v2, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 7092
    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v5, Ljava/lang/Object;

    invoke-interface {v1, v3, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 7094
    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {v0}, Lcsu;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7095
    if-eqz v1, :cond_2

    .line 7096
    array-length v6, v1

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_2

    aget-object v7, v1, v2

    .line 7097
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v7, v3, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7096
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move-object v1, p1

    .line 7088
    goto :goto_1

    .line 7100
    :cond_2
    invoke-virtual {v0, v5}, Lcsu;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    .end local v0    # "dayView":Lcsu;
    :cond_3
    return-void
.end method

.method public setDayViewDecorators(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcsf;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "results":Ljava/util/Collection;, "Ljava/util/Collection<Lcsf;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    iget-object v0, p0, Lcsv;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcsv;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3308
    :cond_0
    new-instance v2, Lcse;

    invoke-direct {v2}, Lcse;-><init>()V

    .line 3309
    iget-object v0, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsu;

    .line 4033
    iput-object v9, v2, Lcse;->a:Landroid/graphics/drawable/Drawable;

    .line 4034
    iput-object v9, v2, Lcse;->b:Landroid/graphics/drawable/Drawable;

    .line 4035
    iget-object v1, v2, Lcse;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4036
    iput-boolean v7, v2, Lcse;->d:Z

    .line 4037
    iput-boolean v7, v2, Lcse;->e:Z

    .line 3311
    iget-object v1, p0, Lcsv;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcsf;

    .line 5014
    iget-object v5, v1, Lcsf;->a:Lcsd;

    .line 3312
    invoke-interface {v5}, Lcsd;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5018
    iget-object v1, v1, Lcsf;->b:Lcse;

    .line 5041
    iget-object v5, v1, Lcse;->b:Landroid/graphics/drawable/Drawable;

    .line 6028
    iput-object v5, v2, Lcse;->b:Landroid/graphics/drawable/Drawable;

    .line 6029
    iput-boolean v8, v2, Lcse;->d:Z

    .line 5042
    iget-object v5, v1, Lcse;->a:Landroid/graphics/drawable/Drawable;

    .line 7023
    iput-object v5, v2, Lcse;->a:Landroid/graphics/drawable/Drawable;

    .line 7024
    iput-boolean v8, v2, Lcse;->d:Z

    .line 5043
    iget-object v5, v2, Lcse;->c:Ljava/util/List;

    iget-object v6, v1, Lcse;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5044
    iget-boolean v5, v2, Lcse;->d:Z

    iget-boolean v6, v1, Lcse;->d:Z

    or-int/2addr v5, v6

    iput-boolean v5, v2, Lcse;->d:Z

    .line 5045
    iget-boolean v1, v1, Lcse;->e:Z

    iput-boolean v1, v2, Lcse;->e:Z

    goto :goto_1

    .line 3316
    :cond_2
    invoke-virtual {v0, v2}, Lcsu;->a(Lcse;)V

    goto :goto_0

    .line 234
    :cond_3
    return-void
.end method

.method public setMaximumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 0
    .param p1, "maxDate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    .line 284
    iput-object p1, p0, Lcsv;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 285
    invoke-direct {p0}, Lcsv;->b()V

    .line 286
    return-void
.end method

.method public setMinimumDate(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 0
    .param p1, "minDate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    .line 279
    iput-object p1, p0, Lcsv;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 280
    invoke-direct {p0}, Lcsv;->b()V

    .line 281
    return-void
.end method

.method public setSelectedDates(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    .local p1, "dates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;>;"
    iget-object v2, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcsu;

    .line 7168
    .local v1, "dayView":Lcsu;
    iget-object v0, v1, Lcsu;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 291
    .local v0, "day":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 8163
    :goto_1
    invoke-virtual {v1, v2}, Lcsu;->setChecked(Z)V

    .line 8164
    invoke-virtual {v1}, Lcsu;->a()V

    goto :goto_0

    .line 291
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 293
    .end local v0    # "day":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .end local v1    # "dayView":Lcsu;
    :cond_1
    invoke-virtual {p0}, Lcsv;->postInvalidate()V

    .line 294
    return-void
.end method

.method public setSelectionColor(I)V
    .locals 3
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    iget-object v1, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsu;

    .line 262
    .local v0, "dayView":Lcsu;
    invoke-virtual {v0, p1}, Lcsu;->a(I)V

    goto :goto_0

    .line 264
    .end local v0    # "dayView":Lcsu;
    :cond_0
    return-void
.end method

.method public setSelectionEnabled(Z)V
    .locals 3
    .param p1, "selectionEnabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v1, p0, Lcsv;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsu;

    .line 255
    .local v0, "dayView":Lcsu;
    if-eqz p1, :cond_0

    move-object v1, p0

    :goto_1
    invoke-virtual {v0, v1}, Lcsu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {v0, p1}, Lcsu;->setClickable(Z)V

    goto :goto_0

    .line 255
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 258
    .end local v0    # "dayView":Lcsu;
    :cond_1
    return-void
.end method

.method public setShowDefaults(I)V
    .locals 0
    .param p1, "showFlags"    # I

    .prologue
    .line 249
    iput p1, p0, Lcsv;->l:I

    .line 250
    invoke-direct {p0}, Lcsv;->b()V

    .line 251
    return-void
.end method

.method public setWeekDayFormatter(Lcsq;)V
    .locals 4
    .param p1, "formatter"    # Lcsq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v1, p0, Lcsv;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 7032
    .local v0, "dayView":Lcsw;
    if-nez p1, :cond_0

    sget-object v1, Lcsq;->a:Lcsq;

    :goto_1
    iput-object v1, v0, Lcsw;->a:Lcsq;

    .line 7033
    iget-object v1, v0, Lcsw;->a:Lcsq;

    iget v3, v0, Lcsw;->b:I

    invoke-interface {v1, v3}, Lcsq;->a(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcsw;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 7032
    goto :goto_1

    .line 270
    .end local v0    # "dayView":Lcsw;
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 3
    .param p1, "taId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 237
    iget-object v1, p0, Lcsv;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 238
    .local v0, "weekDayView":Lcsw;
    invoke-virtual {p0}, Lcsv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcsw;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 240
    .end local v0    # "weekDayView":Lcsw;
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
