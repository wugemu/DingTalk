.class final Lq$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Lw;

.field c:Landroid/animation/AnimatorSet;

.field d:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "copy"    # Lq$a;
    .param p2, "owner"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 585
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 586
    if-eqz p1, :cond_3

    .line 587
    iget v7, p1, Lq$a;->a:I

    iput v7, p0, Lq$a;->a:I

    .line 588
    iget-object v7, p1, Lq$a;->b:Lw;

    if-eqz v7, :cond_0

    .line 589
    iget-object v7, p1, Lq$a;->b:Lw;

    invoke-virtual {v7}, Lw;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 590
    .local v2, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p3, :cond_1

    .line 591
    invoke-virtual {v2, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lw;

    iput-object v7, p0, Lq$a;->b:Lw;

    .line 595
    :goto_0
    iget-object v7, p0, Lq$a;->b:Lw;

    invoke-virtual {v7}, Lw;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lw;

    iput-object v7, p0, Lq$a;->b:Lw;

    .line 596
    iget-object v7, p0, Lq$a;->b:Lw;

    invoke-virtual {v7, p2}, Lw;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 597
    iget-object v7, p0, Lq$a;->b:Lw;

    iget-object v8, p1, Lq$a;->b:Lw;

    invoke-virtual {v8}, Lw;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lw;->setBounds(Landroid/graphics/Rect;)V

    .line 598
    iget-object v7, p0, Lq$a;->b:Lw;

    .line 1816
    const/4 v8, 0x0

    iput-boolean v8, v7, Lw;->c:Z

    .line 600
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v7, p1, Lq$a;->e:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 601
    iget-object v7, p1, Lq$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 602
    .local v4, "numAnimators":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lq$a;->e:Ljava/util/ArrayList;

    .line 603
    new-instance v7, Lfk;

    invoke-direct {v7, v4}, Lfk;-><init>(I)V

    iput-object v7, p0, Lq$a;->d:Lfk;

    .line 604
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 605
    iget-object v7, p1, Lq$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 606
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    .line 607
    .local v1, "animClone":Landroid/animation/Animator;
    iget-object v7, p1, Lq$a;->d:Lfk;

    invoke-virtual {v7, v0}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 608
    .local v5, "targetName":Ljava/lang/String;
    iget-object v7, p0, Lq$a;->b:Lw;

    invoke-virtual {v7, v5}, Lw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 609
    .local v6, "targetObject":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 610
    iget-object v7, p0, Lq$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v7, p0, Lq$a;->d:Lfk;

    invoke-virtual {v7, v1, v5}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 593
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "animClone":Landroid/animation/Animator;
    .end local v3    # "i":I
    .end local v4    # "numAnimators":I
    .end local v5    # "targetName":Ljava/lang/String;
    .end local v6    # "targetObject":Ljava/lang/Object;
    .restart local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lw;

    iput-object v7, p0, Lq$a;->b:Lw;

    goto :goto_0

    .line 613
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v3    # "i":I
    .restart local v4    # "numAnimators":I
    :cond_2
    invoke-virtual {p0}, Lq$a;->a()V

    .line 616
    .end local v3    # "i":I
    .end local v4    # "numAnimators":I
    :cond_3
    return-void
.end method

.method static synthetic a(Lq$a;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lq$a;

    .prologue
    .line 576
    iget-object v0, p0, Lq$a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lq$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lq$a;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 576
    iput-object p1, p0, Lq$a;->e:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 634
    iget-object v0, p0, Lq$a;->c:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lq$a;->c:Landroid/animation/AnimatorSet;

    .line 637
    :cond_0
    iget-object v0, p0, Lq$a;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lq$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 638
    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lq$a;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
