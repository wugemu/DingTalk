.class final Lcs$4;
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
.field final synthetic a:Lfk;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcs$a;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/support/v4/app/Fragment;

.field final synthetic g:Landroid/support/v4/app/Fragment;

.field final synthetic h:Z

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Ljava/lang/Object;

.field final synthetic k:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lfk;Ljava/lang/Object;Lcs$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcs$4;->a:Lfk;

    iput-object p2, p0, Lcs$4;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcs$4;->c:Lcs$a;

    iput-object p4, p0, Lcs$4;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcs$4;->e:Landroid/view/View;

    iput-object p6, p0, Lcs$4;->f:Landroid/support/v4/app/Fragment;

    iput-object p7, p0, Lcs$4;->g:Landroid/support/v4/app/Fragment;

    iput-boolean p8, p0, Lcs$4;->h:Z

    iput-object p9, p0, Lcs$4;->i:Ljava/util/ArrayList;

    iput-object p10, p0, Lcs$4;->j:Ljava/lang/Object;

    iput-object p11, p0, Lcs$4;->k:Landroid/graphics/Rect;

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
    .line 657
    iget-object v2, p0, Lcs$4;->a:Lfk;

    iget-object v3, p0, Lcs$4;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcs$4;->c:Lcs$a;

    invoke-static {v2, v3, v4}, Lcs;->a(Lfk;Ljava/lang/Object;Lcs$a;)Lfk;

    move-result-object v1

    .line 660
    .local v1, "inSharedElements":Lfk;, "Lfk<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz v1, :cond_0

    .line 661
    iget-object v2, p0, Lcs$4;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lfk;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 662
    iget-object v2, p0, Lcs$4;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcs$4;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_0
    iget-object v2, p0, Lcs$4;->f:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcs$4;->g:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Lcs$4;->h:Z

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcs;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLfk;Z)V

    .line 667
    iget-object v2, p0, Lcs$4;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 668
    iget-object v2, p0, Lcs$4;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcs$4;->i:Ljava/util/ArrayList;

    iget-object v4, p0, Lcs$4;->d:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lct;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 672
    iget-object v2, p0, Lcs$4;->c:Lcs$a;

    iget-object v3, p0, Lcs$4;->j:Ljava/lang/Object;

    iget-boolean v4, p0, Lcs$4;->h:Z

    invoke-static {v1, v2, v3, v4}, Lcs;->a(Lfk;Lcs$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 674
    .local v0, "inEpicenterView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 675
    iget-object v2, p0, Lcs$4;->k:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lct;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 679
    .end local v0    # "inEpicenterView":Landroid/view/View;
    :cond_1
    return-void
.end method
