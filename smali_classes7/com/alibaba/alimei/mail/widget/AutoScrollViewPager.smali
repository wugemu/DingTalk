.class public Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Z

.field private d:J

.field private e:Z

.field private f:I

.field private g:D

.field private h:D

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 40
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d:J

    .line 44
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a:I

    .line 48
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b:Z

    .line 52
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->e:Z

    .line 57
    iput v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->f:I

    .line 61
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->c:Z

    .line 65
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->g:D

    .line 69
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->h:D

    .line 72
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->j:Z

    .line 73
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->k:Z

    .line 74
    iput v4, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->l:F

    iput v4, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->m:F

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d:J

    .line 44
    iput v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a:I

    .line 48
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b:Z

    .line 52
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->e:Z

    .line 57
    iput v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->f:I

    .line 61
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->c:Z

    .line 65
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->g:D

    .line 69
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->h:D

    .line 72
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->j:Z

    .line 73
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->k:Z

    .line 74
    iput v4, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->l:F

    iput v4, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->m:F

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    .line 86
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a()V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)D
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->g:D

    return-wide v0
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    new-instance v0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager$a;-><init>(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->i:Landroid/os/Handler;

    .line 1121
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1122
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1123
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v2, "sInterpolator"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1124
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1126
    new-instance v2, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v0}, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    :goto_0
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(J)V
    .locals 3
    .param p1, "delayTimeInMills"    # J

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)D
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->h:D

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d:J

    return-wide v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 180
    .line 1465
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 182
    .local v0, "action":I
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->e:Z

    if-eqz v2, :cond_0

    .line 183
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->j:Z

    if-eqz v2, :cond_1

    .line 184
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->k:Z

    .line 2106
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->j:Z

    .line 2107
    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->i:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 223
    .end local v0    # "action":I
    :goto_1
    return v1

    .line 186
    .restart local v0    # "action":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->k:Z

    if-eqz v2, :cond_0

    .line 3098
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->j:Z

    .line 3099
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d:J

    long-to-double v2, v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->n:Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/CustomDurationScroller;->getDuration()I

    move-result v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->g:D

    div-double/2addr v4, v6

    iget-wide v6, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->h:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->a(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0    # "action":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 162
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 165
    .local v1, "h":I
    if-le v1, v2, :cond_0

    move v2, v1

    .line 161
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 170
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 171
    return-void
.end method

.method public setCycle(Z)V
    .locals 0
    .param p1, "isCycle"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->b:Z

    .line 269
    return-void
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/alibaba/alimei/mail/widget/AutoScrollViewPager;->d:J

    .line 259
    return-void
.end method
