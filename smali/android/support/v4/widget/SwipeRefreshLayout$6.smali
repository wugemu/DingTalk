.class final Landroid/support/v4/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 1099
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 1104
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->k:Z

    .line 1105
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->h:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->g:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 1109
    .local v0, "endTarget":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->f:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 1110
    .local v2, "targetTop":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->e:Lhj;

    invoke-virtual {v3}, Lhj;->getTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 1111
    .local v1, "offset":I
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1112
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->i:Landroid/support/v4/widget/CircularProgressDrawable;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CircularProgressDrawable;->a(F)V

    .line 1113
    return-void
.end method
