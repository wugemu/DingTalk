.class public Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;
.super Landroid/widget/RelativeLayout;
.source "NewSpreadView.java"


# instance fields
.field a:[Landroid/widget/ImageView;

.field b:[Landroid/animation/ObjectAnimator;

.field c:[Ljava/lang/Runnable;

.field d:I

.field e:I

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    .line 30
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    .line 31
    new-array v0, v1, [Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    .line 30
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    .line 31
    new-array v0, v1, [Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x3

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    .line 30
    new-array v0, v1, [Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    .line 31
    new-array v0, v1, [Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    if-eqz v3, :cond_6

    .line 106
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 107
    .local v0, "img":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 108
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "img":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v1, v5, v3

    .line 112
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 111
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    array-length v6, v5

    move v3, v4

    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v2, v5, v3

    .line 117
    .local v2, "run":Ljava/lang/Runnable;
    if-eqz v2, :cond_4

    .line 118
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    invoke-virtual {v7, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 116
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 121
    .end local v2    # "run":Ljava/lang/Runnable;
    :cond_5
    iput-boolean v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->f:Z

    .line 123
    :cond_6
    return-void
.end method
