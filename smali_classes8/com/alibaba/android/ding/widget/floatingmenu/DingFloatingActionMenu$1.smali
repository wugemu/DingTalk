.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;
.super Ljava/lang/Object;
.source "DingFloatingActionMenu.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 241
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 242
    .local v1, "value":F
    float-to-double v2, v1

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit16 v0, v2, 0xff

    .line 243
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setAlpha(I)V

    .line 244
    float-to-double v2, v1

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getColorNormal()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->b(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->c(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->d(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(III)V

    .line 246
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 248
    :cond_0
    float-to-double v2, v1

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->getColorNormal()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 249
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->e(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->f(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->g(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a(III)V

    .line 250
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$1;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->a()V

    .line 252
    :cond_1
    return-void
.end method
