.class final Lco$h;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field final a:Z

.field final b:Lcf;

.field c:I


# direct methods
.method constructor <init>(Lcf;Z)V
    .locals 0
    .param p1, "record"    # Lcf;
    .param p2, "isBack"    # Z

    .prologue
    .line 3798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3799
    iput-boolean p2, p0, Lco$h;->a:Z

    .line 3800
    iput-object p1, p0, Lco$h;->b:Lcf;

    .line 3801
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 3810
    iget v0, p0, Lco$h;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lco$h;->c:I

    .line 3811
    iget v0, p0, Lco$h;->c:I

    if-eqz v0, :cond_0

    .line 3815
    :goto_0
    return-void

    .line 3814
    :cond_0
    iget-object v0, p0, Lco$h;->b:Lcf;

    iget-object v0, v0, Lcf;->b:Lco;

    invoke-static {v0}, Lco;->a(Lco;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3824
    iget v0, p0, Lco$h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco$h;->c:I

    .line 3825
    return-void
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3841
    iget v7, p0, Lco$h;->c:I

    if-lez v7, :cond_1

    move v0, v5

    .line 3842
    .local v0, "canceled":Z
    :goto_0
    iget-object v7, p0, Lco$h;->b:Lcf;

    iget-object v3, v7, Lcf;->b:Lco;

    .line 3843
    .local v3, "manager":Lco;
    iget-object v7, v3, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3844
    .local v4, "numAdded":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 3845
    iget-object v7, v3, Lco;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3846
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$b;)V

    .line 3847
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3848
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    .line 3844
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "canceled":Z
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "i":I
    .end local v3    # "manager":Lco;
    .end local v4    # "numAdded":I
    :cond_1
    move v0, v6

    .line 3841
    goto :goto_0

    .line 3851
    .restart local v0    # "canceled":Z
    .restart local v2    # "i":I
    .restart local v3    # "manager":Lco;
    .restart local v4    # "numAdded":I
    :cond_2
    iget-object v7, p0, Lco$h;->b:Lcf;

    iget-object v7, v7, Lcf;->b:Lco;

    iget-object v8, p0, Lco$h;->b:Lcf;

    iget-boolean v9, p0, Lco$h;->a:Z

    if-nez v0, :cond_3

    move v6, v5

    :cond_3
    invoke-static {v7, v8, v9, v6, v5}, Lco;->a(Lco;Lcf;ZZZ)V

    .line 3852
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3859
    iget-object v0, p0, Lco$h;->b:Lcf;

    iget-object v0, v0, Lcf;->b:Lco;

    iget-object v1, p0, Lco$h;->b:Lcf;

    iget-boolean v2, p0, Lco$h;->a:Z

    invoke-static {v0, v1, v2, v3, v3}, Lco;->a(Lco;Lcf;ZZZ)V

    .line 3860
    return-void
.end method
