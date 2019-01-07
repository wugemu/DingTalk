.class public Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DWPenetrateFrameLayout.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:I


# instance fields
.field a:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->b:Ljava/lang/String;

    .line 19
    const/16 v0, 0xc8

    sput v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    sget v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    .line 3041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    .line 2041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget v0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->c:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final getPenetrateAlpha()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 60
    const/16 v7, 0xff

    :try_start_0
    iget v8, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    if-ne v7, v8, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v5

    .line 62
    :cond_1
    iget v7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    if-nez v7, :cond_2

    move v5, v6

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 66
    .local v4, "y":I
    if-ltz v3, :cond_3

    if-gez v4, :cond_4

    :cond_3
    move v5, v6

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 3090
    iget-boolean v7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->a:Z

    if-eqz v7, :cond_5

    .line 3092
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->destroyDrawingCache()V

    .line 3093
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->buildDrawingCache()V

    .line 3094
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->a:Z

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .local v1, "drawingCache":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v3, v7, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v4, v7, :cond_7

    :cond_6
    move v5, v6

    .line 74
    goto :goto_0

    .line 76
    :cond_7
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 77
    .local v2, "pixel":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    rsub-int v0, v7, 0xff

    .line 78
    .local v0, "alpha":I
    iget v7, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 81
    .end local v0    # "alpha":I
    .end local v1    # "drawingCache":Landroid/graphics/Bitmap;
    .end local v2    # "pixel":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :catch_0
    move-exception v5

    move v5, v6

    goto :goto_0
.end method

.method public final setPenetrateAlpha(I)V
    .locals 1
    .param p1, "penetrateAlpha"    # I

    .prologue
    const/16 v0, 0xff

    .line 49
    if-le p1, v0, :cond_1

    move p1, v0

    .end local p1    # "penetrateAlpha":I
    :cond_0
    :goto_0
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/largelive/DWPenetrateFrameLayout;->d:I

    .line 50
    return-void

    .line 49
    .restart local p1    # "penetrateAlpha":I
    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method
