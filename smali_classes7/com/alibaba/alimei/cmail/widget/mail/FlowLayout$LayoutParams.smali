.class public Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I

    .line 545
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 532
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 528
    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I

    .line 534
    sget-object v1, Laxo$k;->FlowLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 537
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Laxo$k;->FlowLayout_Layout_android_layout_gravity:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->a:I

    .line 549
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->b:Z

    return v0
.end method
