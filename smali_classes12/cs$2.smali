.class final Lcs$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcs$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcs$2;->b:Landroid/view/View;

    iput-object p3, p0, Lcs$2;->c:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcs$2;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcs$2;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Lcs$2;->f:Ljava/util/ArrayList;

    iput-object p7, p0, Lcs$2;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v2, p0, Lcs$2;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 375
    iget-object v2, p0, Lcs$2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcs$2;->b:Landroid/view/View;

    .line 1533
    if-eqz v2, :cond_0

    .line 1534
    check-cast v2, Landroid/transition/Transition;

    .line 1535
    invoke-virtual {v2, v3}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 377
    :cond_0
    iget-object v2, p0, Lcs$2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcs$2;->c:Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Lcs$2;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lcs$2;->b:Landroid/view/View;

    invoke-static {v2, v3, v4, v5}, Lcs;->a(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 379
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcs$2;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    iget-object v2, p0, Lcs$2;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 383
    iget-object v2, p0, Lcs$2;->g:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcs$2;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lcs$2;->g:Ljava/lang/Object;

    iget-object v3, p0, Lcs$2;->f:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Lct;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 389
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v2, p0, Lcs$2;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object v2, p0, Lcs$2;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lcs$2;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_3
    return-void
.end method
