.class public final Lkfl;
.super Lkfk$a;
.source "TreeNodeUniqueChildren.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lkfk$a;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lkfk$a;-><init>(Ljava/lang/Object;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final b(Lkfk;)Z
    .locals 6
    .param p1, "node"    # Lkfk;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Argument node is null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :cond_0
    invoke-virtual {p0}, Lkfl;->c()Ljava/util/Iterator;

    move-result-object v2

    .line 114
    .local v2, "childIt":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfk;

    .line 118
    .local v0, "child":Lkfk;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v0}, Lkfk;->b()Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "childChilds":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lkfk;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkfk;

    check-cast v4, [Lkfk;

    invoke-interface {p1, v4}, Lkfk;->a([Lkfk;)Z

    .line 122
    invoke-interface {p1, p0}, Lkfk;->a(Lkfk;)V

    .line 124
    invoke-virtual {p0, v0}, Lkfl;->c(Lkfk;)Z

    .line 128
    .end local v0    # "child":Lkfk;
    .end local v1    # "childChilds":Ljava/util/List;
    :cond_2
    invoke-super {p0, p1}, Lkfk$a;->b(Lkfk;)Z

    move-result v3

    .line 129
    .local v3, "ret":Z
    return v3
.end method
