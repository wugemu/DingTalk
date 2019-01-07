.class public abstract Lso;
.super Ljava/lang/Object;
.source "BasePopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lsn;
.implements Lsp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lso$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field protected e:Lsq;

.field protected f:Landroid/view/View;

.field protected g:Landroid/app/Activity;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field public j:Lso$a;

.field protected k:Landroid/view/animation/Animation;

.field protected l:Landroid/animation/Animator;

.field protected m:Landroid/view/animation/Animation;

.field protected n:Landroid/animation/Animator;

.field private o:I

.field private p:I

.field private q:I

.field private r:[I

.field private s:Z

.field private t:Z

.field private u:Landroid/animation/Animator$AnimatorListener;

.field private v:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v2, p0, Lso;->a:Z

    .line 74
    iput-boolean v2, p0, Lso;->b:Z

    .line 75
    iput-boolean v1, p0, Lso;->c:Z

    .line 78
    iput v2, p0, Lso;->d:I

    .line 91
    iput-boolean v1, p0, Lso;->s:Z

    .line 763
    new-instance v3, Lso$2;

    invoke-direct {v3, p0}, Lso$2;-><init>(Lso;)V

    iput-object v3, p0, Lso;->u:Landroid/animation/Animator$AnimatorListener;

    .line 786
    new-instance v3, Lso$3;

    invoke-direct {v3, p0}, Lso$3;-><init>(Lso;)V

    iput-object v3, p0, Lso;->v:Landroid/view/animation/Animation$AnimationListener;

    .line 1104
    iput-object p1, p0, Lso;->g:Landroid/app/Activity;

    .line 1106
    invoke-virtual {p0}, Lso;->b()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lso;->f:Landroid/view/View;

    .line 1108
    new-instance v3, Lsq;

    iget-object v5, p0, Lso;->f:Landroid/view/View;

    invoke-direct {v3, v5, v4, v4, p0}, Lsq;-><init>(Landroid/view/View;IILsp;)V

    iput-object v3, p0, Lso;->e:Lsq;

    .line 1109
    iget-object v3, p0, Lso;->e:Lsq;

    invoke-virtual {v3, p0}, Lsq;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1670
    iput-boolean v1, p0, Lso;->t:Z

    .line 1673
    iget-object v3, p0, Lso;->e:Lsq;

    invoke-virtual {v3, v1}, Lsq;->setFocusable(Z)V

    .line 1674
    iget-object v3, p0, Lso;->e:Lsq;

    invoke-virtual {v3, v1}, Lsq;->setOutsideTouchable(Z)V

    .line 1675
    iget-object v3, p0, Lso;->e:Lsq;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v3, v5}, Lsq;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    iget-object v3, p0, Lso;->f:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1115
    iget-object v3, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1116
    if-eqz v5, :cond_7

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v0, :cond_7

    move v3, v0

    .line 1120
    :goto_0
    if-nez v5, :cond_4

    .line 1121
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1125
    :goto_1
    iget-object v3, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v0, v4, v4}, Landroid/view/View;->measure(II)V

    .line 1127
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lso;->p:I

    .line 2547
    iget-object v0, p0, Lso;->g:Landroid/app/Activity;

    .line 1129
    const/16 v3, 0x80

    invoke-static {v0, v3}, Lss;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lso;->o:I

    .line 1130
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    iget v3, p0, Lso;->o:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1131
    iget v0, p0, Lso;->p:I

    iget v3, p0, Lso;->o:I

    if-ge v0, v3, :cond_0

    .line 1132
    iget v0, p0, Lso;->o:I

    iput v0, p0, Lso;->p:I

    .line 1134
    :cond_0
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lso;->q:I

    .line 1135
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1139
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v0, v3, :cond_5

    move v0, v1

    .line 3214
    :goto_2
    iput-boolean v0, p0, Lso;->c:Z

    .line 3215
    if-eqz v0, :cond_6

    .line 3226
    :goto_3
    if-lez v1, :cond_2

    .line 3227
    iget-object v0, p0, Lso;->e:Lsq;

    invoke-virtual {v0, v1}, Lsq;->setAnimationStyle(I)V

    .line 1141
    :cond_2
    invoke-virtual {p0}, Lso;->a()V

    .line 1144
    invoke-virtual {p0}, Lso;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lso;->h:Landroid/view/View;

    .line 1145
    invoke-virtual {p0}, Lso;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lso;->i:Landroid/view/View;

    .line 1146
    iget-object v0, p0, Lso;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1147
    iget-object v0, p0, Lso;->i:Landroid/view/View;

    new-instance v1, Lso$1;

    invoke-direct {v1, p0}, Lso$1;-><init>(Lso;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    :cond_3
    invoke-virtual {p0}, Lso;->d()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lso;->k:Landroid/view/animation/Animation;

    .line 1156
    iput-object v6, p0, Lso;->l:Landroid/animation/Animator;

    .line 1157
    iput-object v6, p0, Lso;->m:Landroid/view/animation/Animation;

    .line 1158
    iput-object v6, p0, Lso;->n:Landroid/animation/Animator;

    .line 1160
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lso;->r:[I

    .line 101
    return-void

    .line 1123
    :cond_4
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1139
    goto :goto_2

    :cond_6
    move v1, v2

    .line 3215
    goto :goto_3

    :cond_7
    move v3, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Lso;Z)Z
    .locals 1
    .param p0, "x0"    # Lso;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lso;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "root_height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 879
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 880
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 881
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 882
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcms;->a(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v3, v2

    .line 883
    .local v0, "h":I
    iget-object v2, p0, Lso;->e:Lsq;

    invoke-virtual {v2, v0}, Lsq;->setHeight(I)V

    .line 885
    .end local v0    # "h":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v2, p0, Lso;->e:Lsq;

    invoke-virtual {v2, p1}, Lsq;->showAsDropDown(Landroid/view/View;)V

    .line 886
    return-void
.end method

.method protected a(Z)V
    .locals 4
    .param p1, "needFullScreen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 459
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 461
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "mLayoutInScreen"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 462
    .local v1, "mLayoutInScreen":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 463
    iget-object v2, p0, Lso;->e:Lsq;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 470
    .end local v1    # "mLayoutInScreen":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract d()Landroid/view/animation/Animation;
.end method

.method public abstract e()Landroid/view/View;
.end method

.method public f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 237
    .line 4291
    :try_start_0
    iget-object v0, p0, Lso;->e:Lsq;

    iget-object v1, p0, Lso;->g:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsq;->showAtLocation(Landroid/view/View;III)V

    .line 4293
    iget-object v0, p0, Lso;->k:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lso;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4294
    iget-object v0, p0, Lso;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4295
    iget-object v0, p0, Lso;->h:Landroid/view/View;

    iget-object v1, p0, Lso;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4297
    :cond_0
    iget-object v0, p0, Lso;->k:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lso;->l:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lso;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4298
    iget-object v0, p0, Lso;->l:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4308
    :cond_1
    :goto_0
    return-void

    .line 4305
    :catch_0
    move-exception v0

    .line 4306
    const-string/jumbo v1, "BasePopupWindow"

    const-string/jumbo v2, "show error"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lso;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lso;->f:Landroid/view/View;

    return-object v0
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 695
    :try_start_0
    iget-object v0, p0, Lso;->e:Lsq;

    invoke-virtual {v0}, Lsq;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BasePopupWindow"

    const-string/jumbo v1, "dismiss error"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 703
    .line 4750
    iget-boolean v0, p0, Lso;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 703
    goto :goto_0
.end method

.method public final k()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "hasAnima":Z
    iget-object v2, p0, Lso;->m:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lso;->h:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 710
    iget-boolean v2, p0, Lso;->b:Z

    if-nez v2, :cond_0

    .line 711
    iget-object v2, p0, Lso;->m:Landroid/view/animation/Animation;

    iget-object v3, p0, Lso;->v:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 712
    iget-object v2, p0, Lso;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 713
    iget-object v2, p0, Lso;->h:Landroid/view/View;

    iget-object v3, p0, Lso;->m:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 714
    iput-boolean v1, p0, Lso;->b:Z

    .line 715
    const/4 v0, 0x1

    .line 727
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .line 717
    :cond_1
    iget-object v2, p0, Lso;->n:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 718
    iget-boolean v2, p0, Lso;->b:Z

    if-nez v2, :cond_0

    .line 719
    iget-object v2, p0, Lso;->n:Landroid/animation/Animator;

    iget-object v3, p0, Lso;->u:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 720
    iget-object v2, p0, Lso;->n:Landroid/animation/Animator;

    iget-object v3, p0, Lso;->u:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    iget-object v2, p0, Lso;->n:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 722
    iput-boolean v1, p0, Lso;->b:Z

    .line 723
    const/4 v0, 0x1

    goto :goto_0

    .line 727
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lso;->j:Lso$a;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lso;->j:Lso$a;

    invoke-virtual {v0}, Lso$a;->onDismiss()V

    .line 875
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lso;->b:Z

    .line 876
    return-void
.end method
