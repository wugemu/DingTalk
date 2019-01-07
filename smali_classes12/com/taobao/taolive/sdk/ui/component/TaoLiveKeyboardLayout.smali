.class public Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;
.super Landroid/widget/RelativeLayout;
.source "TaoLiveKeyboardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;
    }
.end annotation


# instance fields
.field protected mHasKeybord:Z

.field private mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    .line 31
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    .line 80
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    :try_start_0
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    invoke-virtual {p0}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 47
    .local v3, "totalHeight":I
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, v5

    .line 48
    .local v2, "nowHeight":I
    sub-int v4, v3, v2

    div-int/lit8 v5, v3, 0x5

    if-le v4, v5, :cond_2

    .line 49
    iget-boolean v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mHasKeybord:Z

    if-nez v4, :cond_0

    .line 50
    iput-boolean v7, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mHasKeybord:Z

    .line 52
    sub-int v4, v3, v2

    iget-object v5, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v5

    .line 54
    .local v1, "inputHeight":I
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    invoke-interface {v4, v1}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;->onKeyboardShow(I)V

    .line 58
    .end local v1    # "inputHeight":I
    :cond_0
    iget-boolean v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mHasKeybord:Z

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 76
    .end local v2    # "nowHeight":I
    .end local v3    # "totalHeight":I
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "getWindowVisibleDisplayFrame failed, error="

    aput-object v5, v4, v6

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 41
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1013
    const-string/jumbo v5, "live"

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "nowHeight":I
    .restart local v3    # "totalHeight":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mHasKeybord:Z

    if-eqz v4, :cond_3

    .line 68
    iput-boolean v6, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mHasKeybord:Z

    .line 70
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    invoke-interface {v4}, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;->onKeyboardHide()V

    .line 74
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setOnKeyboardListener(Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;)V
    .locals 0
    .param p1, "onKeyboardListener"    # Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout;->mOnKeyboardListener:Lcom/taobao/taolive/sdk/ui/component/TaoLiveKeyboardLayout$OnKeyboardListener;

    .line 35
    return-void
.end method
