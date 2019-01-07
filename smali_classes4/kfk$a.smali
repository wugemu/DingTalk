.class public Lkfk$a;
.super Ljava/lang/Object;
.source "ITreeNode.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lkfk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lkfk;",
        ">;",
        "Lkfk;"
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Ljava/lang/Object;

.field d:Lkfk;

.field protected e:Ljava/util/SortedSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkfk$a;->b:Z

    .line 455
    iput-object v1, p0, Lkfk$a;->c:Ljava/lang/Object;

    .line 460
    iput-object v1, p0, Lkfk$a;->d:Lkfk;

    .line 475
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    .line 476
    const-string/jumbo v0, "root"

    iput-object v0, p0, Lkfk$a;->c:Ljava/lang/Object;

    .line 477
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 489
    invoke-direct {p0}, Lkfk$a;-><init>()V

    .line 490
    iput-object p1, p0, Lkfk$a;->c:Ljava/lang/Object;

    .line 491
    return-void
.end method

.method private a(Ljava/lang/StringBuffer;I)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "depth"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 836
    .line 2816
    iget-object v4, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 836
    :goto_0
    if-eqz v4, :cond_0

    .line 837
    const-string/jumbo v4, "-> "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    :cond_0
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lkfk$a;->c:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 840
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 841
    .local v3, "spaceCollect":Ljava/lang/StringBuffer;
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_2

    .line 842
    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2816
    .end local v0    # "i":I
    .end local v3    # "spaceCollect":Ljava/lang/StringBuffer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 844
    .restart local v0    # "i":I
    .restart local v3    # "spaceCollect":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "indent":Ljava/lang/String;
    invoke-virtual {p0}, Lkfk$a;->c()Ljava/util/Iterator;

    move-result-object v2

    .line 846
    .local v2, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    const-string/jumbo v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfk$a;

    add-int/lit8 v5, p2, 0x1

    invoke-direct {v4, p1, v5}, Lkfk$a;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_2

    .line 850
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lkfk$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1, "l"    # Ljava/util/List;

    .prologue
    .line 903
    .line 2825
    iget-object v0, p0, Lkfk$a;->d:Lkfk;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 903
    :goto_0
    if-eqz v0, :cond_1

    .line 904
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    :goto_1
    return-void

    .line 2825
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3660
    :cond_1
    iget-object v0, p0, Lkfk$a;->d:Lkfk;

    if-nez v0, :cond_2

    sget-object v0, Lkfk$a;->a:Lkfk;

    .line 906
    :goto_2
    invoke-interface {v0, p1}, Lkfk;->a(Ljava/util/List;)V

    .line 907
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3660
    :cond_2
    iget-object v0, p0, Lkfk$a;->d:Lkfk;

    goto :goto_2
.end method

.method public final a(Lkfk;)V
    .locals 1
    .param p1, "parent"    # Lkfk;

    .prologue
    .line 802
    iget-object v0, p0, Lkfk$a;->d:Lkfk;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lkfk$a;->d:Lkfk;

    invoke-interface {v0, p0}, Lkfk;->c(Lkfk;)Z

    .line 806
    :cond_0
    iput-object p1, p0, Lkfk$a;->d:Lkfk;

    .line 808
    return-void
.end method

.method public final a([Lkfk;)Z
    .locals 3
    .param p1, "nodes"    # [Lkfk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 858
    const/4 v1, 0x1

    .line 859
    .local v1, "ret":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 860
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lkfk$a;->b(Lkfk;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_0
    return v1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 890
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .param p1, "l"    # Ljava/util/List;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 917
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 918
    .local v0, "collect":Ljava/util/List;
    invoke-virtual {p0, v0}, Lkfk$a;->a(Ljava/util/List;)V

    .line 919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 920
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkfk;

    invoke-interface {v2}, Lkfk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_0
    return-void
.end method

.method public b(Lkfk;)Z
    .locals 1
    .param p1, "node"    # Lkfk;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-interface {p1, p0}, Lkfk;->a(Lkfk;)V

    .line 589
    iget-object v0, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 590
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lkfk;)Z
    .locals 1
    .param p1, "node"    # Lkfk;

    .prologue
    .line 773
    iget-object v0, p0, Lkfk$a;->e:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 426
    check-cast p1, Lkfk;

    .line 3927
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lkfk$a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Lkfk;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 426
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, "ret":Z
    instance-of v4, p1, Lkfk$a;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 442
    check-cast v2, Lkfk$a;

    .line 1690
    .local v2, "other":Lkfk$a;
    iget-object v1, p0, Lkfk$a;->c:Ljava/lang/Object;

    .line 2690
    .local v1, "myUser":Ljava/lang/Object;
    iget-object v0, v2, Lkfk$a;->c:Ljava/lang/Object;

    .line 445
    .local v0, "himUser":Ljava/lang/Object;
    if-nez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v3, 0x1

    .line 447
    .end local v0    # "himUser":Ljava/lang/Object;
    .end local v1    # "myUser":Ljava/lang/Object;
    .end local v2    # "other":Lkfk$a;
    :cond_0
    :goto_0
    return v3

    .line 445
    .restart local v0    # "himUser":Ljava/lang/Object;
    .restart local v1    # "myUser":Ljava/lang/Object;
    .restart local v2    # "other":Lkfk$a;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 831
    .local v0, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkfk$a;->a(Ljava/lang/StringBuffer;I)V

    .line 832
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
