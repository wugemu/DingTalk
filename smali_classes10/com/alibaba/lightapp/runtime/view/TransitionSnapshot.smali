.class public Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;
.super Landroid/widget/RelativeLayout;
.source "TransitionSnapshot.java"


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1042
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setBackgroundColor(I)V

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

    .line 2042
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setBackgroundColor(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3042
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setBackgroundColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getSnap()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setFade(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 86
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/TransitionSnapshot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void
.end method
