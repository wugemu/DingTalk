.class public Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DWPenetrateRelativeLayout.java"


# static fields
.field private static b:I


# instance fields
.field public a:Z

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xc8

    sput v0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    sget v0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->b:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget v0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->b:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget v0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->b:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I

    .line 33
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 44
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->d:Z

    if-nez v7, :cond_1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 76
    :cond_0
    :goto_0
    return v5

    .line 48
    :cond_1
    const/16 v7, 0xff

    :try_start_0
    iget v8, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I

    if-eq v7, v8, :cond_0

    .line 51
    iget v7, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I

    if-nez v7, :cond_2

    move v5, v6

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 57
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 58
    .local v4, "y":I
    if-ltz v3, :cond_3

    if-gez v4, :cond_4

    :cond_3
    move v5, v6

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 1084
    iget-boolean v7, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->a:Z

    if-eqz v7, :cond_5

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->destroyDrawingCache()V

    .line 1088
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->buildDrawingCache()V

    .line 1089
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->a:Z

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v3, v7, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v4, v7, :cond_7

    :cond_6
    move v5, v6

    .line 68
    goto :goto_0

    .line 70
    :cond_7
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 71
    .local v2, "pixel":I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    rsub-int v0, v7, 0xff

    .line 72
    .local v0, "alpha":I
    iget v7, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v7, :cond_0

    move v5, v6

    goto :goto_0

    .end local v0    # "alpha":I
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "pixel":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :catch_0
    move-exception v5

    .line 76
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public setPenetrateEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->d:Z

    .line 37
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->d:Z

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 40
    :cond_0
    return-void
.end method
