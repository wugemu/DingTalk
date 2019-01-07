.class public final Lcf;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Lco$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf$a;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field final b:Lco;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcf$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field k:Z

.field public l:Ljava/lang/String;

.field m:Z

.field public n:I

.field public o:I

.field public p:Ljava/lang/CharSequence;

.field public q:I

.field public r:Ljava/lang/CharSequence;

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcf;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lco;)V
    .locals 1
    .param p1, "manager"    # Lco;

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf;->k:Z

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcf;->n:I

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcf;->u:Z

    .line 333
    iput-object p1, p0, Lcf;->b:Lco;

    .line 334
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 5
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 394
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 396
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_1
    iget-object v2, p0, Lcf;->b:Lco;

    iput-object v2, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Lco;

    .line 405
    if-eqz p3, :cond_3

    .line 406
    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t change tag of fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_2
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 414
    :cond_3
    if-eqz p1, :cond_6

    .line 415
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t add fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_4
    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_5

    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_5

    .line 420
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t change container ID of fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_5
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 427
    :cond_6
    new-instance v2, Lcf$a;

    invoke-direct {v2, p4, p2}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcf;->a(Lcf$a;)V

    .line 428
    return-void
.end method

.method private b(Z)I
    .locals 2
    .param p1, "allowStateLoss"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 666
    iget-boolean v0, p0, Lcf;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    sget-boolean v0, Lco;->a:Z

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf;->m:Z

    .line 675
    iget-boolean v0, p0, Lcf;->j:Z

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcf;->b:Lco;

    invoke-virtual {v0, p0}, Lco;->a(Lcf;)I

    move-result v0

    iput v0, p0, Lcf;->n:I

    .line 680
    :goto_0
    iget-object v0, p0, Lcf;->b:Lco;

    invoke-virtual {v0, p0, p1}, Lco;->a(Lco$f;Z)V

    .line 681
    iget v0, p0, Lcf;->n:I

    return v0

    .line 678
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcf;->n:I

    goto :goto_0
.end method

.method static b(Lcf$a;)Z
    .locals 2
    .param p0, "op"    # Lcf$a;

    .prologue
    .line 1006
    iget-object v0, p0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 1007
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    .line 1008
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 12
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/16 v11, 0x9

    .line 885
    const/4 v6, 0x0

    .local v6, "opNum":I
    :goto_0
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 886
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf$a;

    .line 887
    .local v5, "op":Lcf$a;
    iget v8, v5, Lcf$a;->a:I

    packed-switch v8, :pswitch_data_0

    .line 885
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 890
    :pswitch_1
    iget-object v8, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 894
    :pswitch_2
    iget-object v8, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object v8, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    if-ne v8, p2, :cond_0

    .line 896
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    new-instance v9, Lcf$a;

    iget-object v10, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v9, v11, v10}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 897
    add-int/lit8 v6, v6, 0x1

    .line 898
    const/4 p2, 0x0

    goto :goto_1

    .line 903
    :pswitch_3
    iget-object v2, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 904
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iget v1, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 905
    .local v1, "containerId":I
    const/4 v0, 0x0

    .line 906
    .local v0, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 907
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 908
    .local v4, "old":Landroid/support/v4/app/Fragment;
    iget v8, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v8, v1, :cond_1

    .line 909
    if-ne v4, v2, :cond_2

    .line 910
    const/4 v0, 0x1

    .line 906
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 914
    :cond_2
    if-ne v4, p2, :cond_3

    .line 915
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    new-instance v9, Lcf$a;

    invoke-direct {v9, v11, v4}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 916
    add-int/lit8 v6, v6, 0x1

    .line 917
    const/4 p2, 0x0

    .line 919
    :cond_3
    new-instance v7, Lcf$a;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v4}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    .line 920
    .local v7, "removeOp":Lcf$a;
    iget v8, v5, Lcf$a;->c:I

    iput v8, v7, Lcf$a;->c:I

    .line 921
    iget v8, v5, Lcf$a;->e:I

    iput v8, v7, Lcf$a;->e:I

    .line 922
    iget v8, v5, Lcf$a;->d:I

    iput v8, v7, Lcf$a;->d:I

    .line 923
    iget v8, v5, Lcf$a;->f:I

    iput v8, v7, Lcf$a;->f:I

    .line 924
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 925
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 926
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 930
    .end local v4    # "old":Landroid/support/v4/app/Fragment;
    .end local v7    # "removeOp":Lcf$a;
    :cond_4
    if-eqz v0, :cond_5

    .line 931
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 932
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 934
    :cond_5
    const/4 v8, 0x1

    iput v8, v5, Lcf$a;->a:I

    .line 935
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 942
    .end local v0    # "alreadyAdded":Z
    .end local v1    # "containerId":I
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    .end local v3    # "i":I
    :pswitch_4
    iget-object v8, p0, Lcf;->c:Ljava/util/ArrayList;

    new-instance v9, Lcf$a;

    invoke-direct {v9, v11, p2}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 943
    add-int/lit8 v6, v6, 0x1

    .line 945
    iget-object p2, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    goto/16 :goto_1

    .line 950
    .end local v5    # "op":Lcf$a;
    :cond_6
    return-object p2

    .line 887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a()Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 557
    iget-boolean v0, p0, Lcf;->j:Z

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcf;->k:Z

    .line 562
    return-object p0
.end method

.method public final a(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 504
    iput p1, p0, Lcf;->h:I

    .line 505
    return-object p0
.end method

.method public final a(II)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, p1, p2, v0, v0}, Lcf;->a(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final a(IIII)Landroid/support/v4/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 495
    iput p1, p0, Lcf;->d:I

    .line 496
    iput p2, p0, Lcf;->e:I

    .line 497
    iput p3, p0, Lcf;->f:I

    .line 498
    iput p4, p0, Lcf;->g:I

    .line 499
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 384
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 390
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 447
    new-instance v0, Lcf$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcf;->a(Lcf$a;)V

    .line 449
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 377
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 378
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 541
    iget-boolean v0, p0, Lcf;->k:Z

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcf;->j:Z

    .line 546
    iput-object p1, p0, Lcf;->l:Ljava/lang/String;

    .line 547
    return-object p0
.end method

.method final a(Landroid/support/v4/app/Fragment$b;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v4/app/Fragment$b;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 997
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 998
    iget-object v2, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf$a;

    .line 999
    .local v0, "op":Lcf$a;
    invoke-static {v0}, Lcf;->b(Lcf$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, v0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$b;)V

    .line 997
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    .end local v0    # "op":Lcf$a;
    :cond_1
    return-void
.end method

.method public final a(Lcf$a;)V
    .locals 1
    .param p1, "op"    # Lcf$a;

    .prologue
    .line 368
    iget-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget v0, p0, Lcf;->d:I

    iput v0, p1, Lcf$a;->c:I

    .line 370
    iget v0, p0, Lcf;->e:I

    iput v0, p1, Lcf$a;->d:I

    .line 371
    iget v0, p0, Lcf;->f:I

    iput v0, p1, Lcf$a;->e:I

    .line 372
    iget v0, p0, Lcf;->g:I

    iput v0, p1, Lcf$a;->f:I

    .line 373
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    .line 3256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcf;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    const-string/jumbo v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcf;->n:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3258
    const-string/jumbo v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcf;->m:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3259
    iget v0, p0, Lcf;->h:I

    if-eqz v0, :cond_0

    .line 3260
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3261
    iget v0, p0, Lcf;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3262
    const-string/jumbo v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3263
    iget v0, p0, Lcf;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    :cond_0
    iget v0, p0, Lcf;->d:I

    if-nez v0, :cond_1

    iget v0, p0, Lcf;->e:I

    if-eqz v0, :cond_2

    .line 3266
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3267
    iget v0, p0, Lcf;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3268
    const-string/jumbo v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3269
    iget v0, p0, Lcf;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    :cond_2
    iget v0, p0, Lcf;->f:I

    if-nez v0, :cond_3

    iget v0, p0, Lcf;->g:I

    if-eqz v0, :cond_4

    .line 3272
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3273
    iget v0, p0, Lcf;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3274
    const-string/jumbo v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    iget v0, p0, Lcf;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    :cond_4
    iget v0, p0, Lcf;->o:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcf;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 3278
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3279
    iget v0, p0, Lcf;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3280
    const-string/jumbo v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3281
    iget-object v0, p0, Lcf;->p:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3283
    :cond_6
    iget v0, p0, Lcf;->q:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcf;->r:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 3284
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3285
    iget v0, p0, Lcf;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3286
    const-string/jumbo v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3287
    iget-object v0, p0, Lcf;->r:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3291
    :cond_8
    iget-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3292
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3294
    iget-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3295
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_d

    .line 3296
    iget-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf$a;

    .line 3298
    iget v1, v0, Lcf$a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 3309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cmd="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcf$a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3311
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3312
    const-string/jumbo v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3313
    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3315
    iget v1, v0, Lcf$a;->c:I

    if-nez v1, :cond_9

    iget v1, v0, Lcf$a;->d:I

    if-eqz v1, :cond_a

    .line 3316
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "enterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3317
    iget v1, v0, Lcf$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3318
    const-string/jumbo v1, " exitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3319
    iget v1, v0, Lcf$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    :cond_a
    iget v1, v0, Lcf$a;->e:I

    if-nez v1, :cond_b

    iget v1, v0, Lcf$a;->f:I

    if-eqz v1, :cond_c

    .line 3322
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "popEnterAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3323
    iget v1, v0, Lcf$a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3324
    const-string/jumbo v1, " popExitAnim=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3325
    iget v0, v0, Lcf$a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 3299
    :pswitch_0
    const-string/jumbo v1, "NULL"

    goto :goto_1

    .line 3300
    :pswitch_1
    const-string/jumbo v1, "ADD"

    goto/16 :goto_1

    .line 3301
    :pswitch_2
    const-string/jumbo v1, "REPLACE"

    goto/16 :goto_1

    .line 3302
    :pswitch_3
    const-string/jumbo v1, "REMOVE"

    goto/16 :goto_1

    .line 3303
    :pswitch_4
    const-string/jumbo v1, "HIDE"

    goto/16 :goto_1

    .line 3304
    :pswitch_5
    const-string/jumbo v1, "SHOW"

    goto/16 :goto_1

    .line 3305
    :pswitch_6
    const-string/jumbo v1, "DETACH"

    goto/16 :goto_1

    .line 3306
    :pswitch_7
    const-string/jumbo v1, "ATTACH"

    goto/16 :goto_1

    .line 3307
    :pswitch_8
    const-string/jumbo v1, "SET_PRIMARY_NAV"

    goto/16 :goto_1

    .line 3308
    :pswitch_9
    const-string/jumbo v1, "UNSET_PRIMARY_NAV"

    goto/16 :goto_1

    .line 252
    :cond_d
    return-void

    .line 3298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method final a(Z)V
    .locals 6
    .param p1, "moveToState"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 811
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "opNum":I
    :goto_0
    if-ltz v2, :cond_2

    .line 812
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf$a;

    .line 813
    .local v1, "op":Lcf$a;
    iget-object v0, v1, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 814
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 815
    iget v3, p0, Lcf;->h:I

    invoke-static {v3}, Lco;->c(I)I

    move-result v3

    iget v4, p0, Lcf;->i:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    .line 818
    :cond_0
    iget v3, v1, Lcf$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 850
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown cmd: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcf$a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 820
    :pswitch_1
    iget v3, v1, Lcf$a;->f:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 821
    iget-object v3, p0, Lcf;->b:Lco;

    invoke-virtual {v3, v0}, Lco;->e(Landroid/support/v4/app/Fragment;)V

    .line 852
    :goto_1
    iget-boolean v3, p0, Lcf;->u:Z

    if-nez v3, :cond_1

    iget v3, v1, Lcf$a;->a:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 853
    iget-object v3, p0, Lcf;->b:Lco;

    invoke-virtual {v3, v0}, Lco;->c(Landroid/support/v4/app/Fragment;)V

    .line 811
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 824
    :pswitch_2
    iget v3, v1, Lcf$a;->e:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 825
    iget-object v3, p0, Lcf;->b:Lco;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lco;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 828
    :pswitch_3
    iget v3, v1, Lcf$a;->e:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 829
    invoke-static {v0}, Lco;->g(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 832
    :pswitch_4
    iget v3, v1, Lcf$a;->f:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 833
    invoke-static {v0}, Lco;->f(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 836
    :pswitch_5
    iget v3, v1, Lcf$a;->e:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 837
    iget-object v3, p0, Lcf;->b:Lco;

    invoke-virtual {v3, v0}, Lco;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 840
    :pswitch_6
    iget v3, v1, Lcf$a;->f:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 841
    iget-object v3, p0, Lcf;->b:Lco;

    invoke-virtual {v3, v0}, Lco;->h(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 844
    :pswitch_7
    iget-object v3, p0, Lcf;->b:Lco;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lco;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 847
    :pswitch_8
    iget-object v3, p0, Lcf;->b:Lco;

    invoke-virtual {v3, v0}, Lco;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 856
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "op":Lcf$a;
    :cond_2
    iget-boolean v3, p0, Lcf;->u:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    .line 857
    iget-object v3, p0, Lcf;->b:Lco;

    iget-object v4, p0, Lcf;->b:Lco;

    iget v4, v4, Lco;->k:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lco;->a(IZ)V

    .line 859
    :cond_3
    return-void

    .line 818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method final a(Ljava/util/ArrayList;II)Z
    .locals 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;II)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 720
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    if-ne p3, p2, :cond_0

    .line 721
    const/4 v11, 0x0

    .line 744
    :goto_0
    return v11

    .line 723
    :cond_0
    iget-object v11, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 724
    .local v3, "numOps":I
    const/4 v2, -0x1

    .line 725
    .local v2, "lastContainer":I
    const/4 v6, 0x0

    .local v6, "opNum":I
    :goto_1
    if-ge v6, v3, :cond_6

    .line 726
    iget-object v11, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcf$a;

    .line 727
    .local v5, "op":Lcf$a;
    iget-object v11, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_1

    iget-object v11, v5, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    iget v0, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 728
    .local v0, "container":I
    :goto_2
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    .line 729
    move v2, v0

    .line 730
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_5

    .line 731
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcf;

    .line 732
    .local v7, "record":Lcf;
    iget-object v11, v7, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 733
    .local v4, "numThoseOps":I
    const/4 v10, 0x0

    .local v10, "thoseOpIndex":I
    :goto_4
    if-ge v10, v4, :cond_4

    .line 734
    iget-object v11, v7, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcf$a;

    .line 735
    .local v9, "thatOp":Lcf$a;
    iget-object v11, v9, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v11, :cond_2

    iget-object v11, v9, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    iget v8, v11, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 737
    .local v8, "thatContainer":I
    :goto_5
    if-ne v8, v0, :cond_3

    .line 738
    const/4 v11, 0x1

    goto :goto_0

    .line 727
    .end local v0    # "container":I
    .end local v1    # "i":I
    .end local v4    # "numThoseOps":I
    .end local v7    # "record":Lcf;
    .end local v8    # "thatContainer":I
    .end local v9    # "thatOp":Lcf$a;
    .end local v10    # "thoseOpIndex":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 735
    .restart local v0    # "container":I
    .restart local v1    # "i":I
    .restart local v4    # "numThoseOps":I
    .restart local v7    # "record":Lcf;
    .restart local v9    # "thatOp":Lcf$a;
    .restart local v10    # "thoseOpIndex":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_5

    .line 733
    .restart local v8    # "thatContainer":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 730
    .end local v8    # "thatContainer":I
    .end local v9    # "thatOp":Lcf$a;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 725
    .end local v1    # "i":I
    .end local v4    # "numThoseOps":I
    .end local v7    # "record":Lcf;
    .end local v10    # "thoseOpIndex":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 744
    .end local v0    # "container":I
    .end local v5    # "op":Lcf$a;
    :cond_6
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcf;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 695
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcf;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    sget-boolean v0, Lco;->a:Z

    .line 699
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-boolean v0, p0, Lcf;->j:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcf;->b:Lco;

    .line 4703
    iget-object v1, v0, Lco;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lco;->g:Ljava/util/ArrayList;

    .line 4706
    :cond_0
    iget-object v0, v0, Lco;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcf;->b(Z)I

    move-result v0

    return v0
.end method

.method final b(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p2, "oldPrimaryNav"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 964
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    iget-object v2, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 965
    iget-object v2, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcf$a;

    .line 966
    .local v0, "op":Lcf$a;
    iget v2, v0, Lcf$a;->a:I

    packed-switch v2, :pswitch_data_0

    .line 964
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 969
    :pswitch_1
    iget-object v2, v0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 973
    :pswitch_2
    iget-object v2, v0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 976
    :pswitch_3
    iget-object p2, v0, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 977
    goto :goto_1

    .line 979
    :pswitch_4
    const/4 p2, 0x0

    goto :goto_1

    .line 983
    .end local v0    # "op":Lcf$a;
    :cond_0
    return-object p2

    .line 966
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcf;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcf;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 442
    return-object p0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 454
    new-instance v0, Lcf$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcf;->a(Lcf$a;)V

    .line 456
    return-object p0
.end method

.method public final b(I)V
    .locals 5
    .param p1, "amt"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 594
    iget-boolean v3, p0, Lcf;->j:Z

    if-nez v3, :cond_1

    .line 608
    :cond_0
    return-void

    .line 597
    :cond_1
    sget-boolean v3, Lco;->a:Z

    .line 599
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, "numOps":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 601
    iget-object v3, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcf$a;

    .line 602
    .local v1, "op":Lcf$a;
    iget-object v3, v1, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_2

    .line 603
    iget-object v3, v1, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 604
    sget-boolean v3, Lco;->a:Z

    .line 600
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcf;->b(Z)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 461
    new-instance v0, Lcf$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcf;->a(Lcf$a;)V

    .line 463
    return-object p0
.end method

.method final c(I)Z
    .locals 6
    .param p1, "containerId"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 708
    iget-object v5, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 709
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 710
    iget-object v5, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcf$a;

    .line 711
    .local v2, "op":Lcf$a;
    iget-object v5, v2, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    iget v0, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 712
    .local v0, "fragContainer":I
    :goto_1
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 713
    const/4 v4, 0x1

    .line 716
    .end local v0    # "fragContainer":I
    .end local v2    # "op":Lcf$a;
    :cond_0
    return v4

    .restart local v2    # "op":Lcf$a;
    :cond_1
    move v0, v4

    .line 711
    goto :goto_1

    .line 709
    .restart local v0    # "fragContainer":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 468
    new-instance v0, Lcf$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcf;->a(Lcf$a;)V

    .line 470
    return-object p0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 650
    invoke-virtual {p0}, Lcf;->a()Landroid/support/v4/app/FragmentTransaction;

    .line 651
    iget-object v1, p0, Lcf;->b:Lco;

    .line 4191
    iget-object v0, v1, Lco;->l:Lcm;

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lco;->s:Z

    if-eqz v0, :cond_1

    .line 4193
    :cond_0
    :goto_0
    return-void

    .line 4195
    :cond_1
    invoke-virtual {v1, v3}, Lco;->a(Z)V

    .line 4196
    iget-object v0, v1, Lco;->v:Ljava/util/ArrayList;

    iget-object v2, v1, Lco;->w:Ljava/util/ArrayList;

    invoke-interface {p0, v0, v2}, Lco$f;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4197
    iput-boolean v3, v1, Lco;->c:Z

    .line 4199
    :try_start_0
    iget-object v0, v1, Lco;->v:Ljava/util/ArrayList;

    iget-object v2, v1, Lco;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lco;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4201
    invoke-virtual {v1}, Lco;->j()V

    .line 4205
    :cond_2
    invoke-virtual {v1}, Lco;->l()V

    .line 4206
    invoke-virtual {v1}, Lco;->n()V

    goto :goto_0

    .line 4201
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lco;->j()V

    throw v0
.end method

.method public final e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 475
    new-instance v0, Lcf$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(ILandroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcf;->a(Lcf$a;)V

    .line 477
    return-object p0
.end method

.method final e()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 752
    iget-object v4, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 753
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 754
    iget-object v4, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcf$a;

    .line 755
    .local v2, "op":Lcf$a;
    iget-object v0, v2, Lcf$a;->b:Landroid/support/v4/app/Fragment;

    .line 756
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 757
    iget v4, p0, Lcf;->h:I

    iget v5, p0, Lcf;->i:I

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V

    .line 759
    :cond_0
    iget v4, v2, Lcf$a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 791
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unknown cmd: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcf$a;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 761
    :pswitch_1
    iget v4, v2, Lcf$a;->c:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 762
    iget-object v4, p0, Lcf;->b:Lco;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lco;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 793
    :goto_1
    iget-boolean v4, p0, Lcf;->u:Z

    if-nez v4, :cond_1

    iget v4, v2, Lcf$a;->a:I

    if-eq v4, v6, :cond_1

    if-eqz v0, :cond_1

    .line 794
    iget-object v4, p0, Lcf;->b:Lco;

    invoke-virtual {v4, v0}, Lco;->c(Landroid/support/v4/app/Fragment;)V

    .line 753
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 765
    :pswitch_2
    iget v4, v2, Lcf$a;->d:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 766
    iget-object v4, p0, Lcf;->b:Lco;

    invoke-virtual {v4, v0}, Lco;->e(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 769
    :pswitch_3
    iget v4, v2, Lcf$a;->d:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 770
    invoke-static {v0}, Lco;->f(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 773
    :pswitch_4
    iget v4, v2, Lcf$a;->c:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 774
    invoke-static {v0}, Lco;->g(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 777
    :pswitch_5
    iget v4, v2, Lcf$a;->d:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 778
    iget-object v4, p0, Lcf;->b:Lco;

    invoke-virtual {v4, v0}, Lco;->h(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 781
    :pswitch_6
    iget v4, v2, Lcf$a;->c:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V

    .line 782
    iget-object v4, p0, Lcf;->b:Lco;

    invoke-virtual {v4, v0}, Lco;->i(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 785
    :pswitch_7
    iget-object v4, p0, Lcf;->b:Lco;

    invoke-virtual {v4, v0}, Lco;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 788
    :pswitch_8
    iget-object v4, p0, Lcf;->b:Lco;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lco;->j(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 797
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "op":Lcf$a;
    :cond_2
    iget-boolean v4, p0, Lcf;->u:Z

    if-nez v4, :cond_3

    .line 799
    iget-object v4, p0, Lcf;->b:Lco;

    iget-object v5, p0, Lcf;->b:Lco;

    iget v5, v5, Lco;->k:I

    invoke-virtual {v4, v5, v6}, Lco;->a(IZ)V

    .line 801
    :cond_3
    return-void

    .line 759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v1, p0, Lcf;->n:I

    if-ltz v1, :cond_0

    .line 239
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget v1, p0, Lcf;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    iget-object v1, p0, Lcf;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcf;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
