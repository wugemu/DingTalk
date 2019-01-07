.class final Lbj$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private e:[I

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 3
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 93
    iput-object p1, p0, Lbj$a;->b:Landroid/view/View;

    .line 94
    iput-object p2, p0, Lbj$a;->a:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lbj$a;->c:I

    .line 96
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Lbj$a;->d:I

    .line 97
    iput p5, p0, Lbj$a;->h:F

    .line 98
    iput p6, p0, Lbj$a;->i:F

    .line 99
    iget-object v0, p0, Lbj$a;->a:Landroid/view/View;

    sget v1, Lay$a;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lbj$a;->e:[I

    .line 100
    iget-object v0, p0, Lbj$a;->e:[I

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lbj$a;->a:Landroid/view/View;

    sget v1, Lay$a;->transition_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;IIFFB)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # F
    .param p6, "x5"    # F

    .prologue
    .line 79
    invoke-direct/range {p0 .. p6}, Lbj$a;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lbj$a;->e:[I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbj$a;->e:[I

    .line 110
    :cond_0
    iget-object v0, p0, Lbj$a;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lbj$a;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lbj$a;->e:[I

    const/4 v1, 0x1

    iget v2, p0, Lbj$a;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Lbj$a;->a:Landroid/view/View;

    sget v1, Lay$a;->transition_position:I

    iget-object v2, p0, Lbj$a;->e:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 117
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 123
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lbj$a;->f:F

    .line 124
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lbj$a;->g:F

    .line 125
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 126
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->f:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    iget-object v0, p0, Lbj$a;->b:Landroid/view/View;

    iget v1, p0, Lbj$a;->g:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    return-void
.end method
