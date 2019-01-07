.class public final Lkrs;
.super Ljava/lang/Object;
.source "JJTAddressListParserState.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkrs;->a:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkrs;->b:Ljava/util/List;

    .line 15
    iput v1, p0, Lkrs;->c:I

    .line 16
    iput v1, p0, Lkrs;->d:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lkrt;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    iget v0, p0, Lkrs;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkrs;->c:I

    iget v1, p0, Lkrs;->d:I

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lkrs;->b:Ljava/util/List;

    iget-object v1, p0, Lkrs;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lkrs;->d:I

    .line 53
    :cond_0
    iget-object v0, p0, Lkrs;->a:Ljava/util/List;

    iget-object v1, p0, Lkrs;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrt;

    return-object v0
.end method

.method public final a(Lkrt;)V
    .locals 2
    .param p1, "n"    # Lkrt;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 77
    iget-object v0, p0, Lkrs;->b:Ljava/util/List;

    iget v1, p0, Lkrs;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget v0, p0, Lkrs;->c:I

    iput v0, p0, Lkrs;->d:I

    .line 80
    return-void
.end method

.method public final a(Lkrt;Z)V
    .locals 5
    .param p1, "n"    # Lkrt;
    .param p2, "condition"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    .line 1064
    iget v3, p0, Lkrs;->c:I

    iget v4, p0, Lkrs;->d:I

    sub-int v0, v3, v4

    .line 108
    .local v0, "a":I
    iget-object v3, p0, Lkrs;->b:Ljava/util/List;

    iget-object v4, p0, Lkrs;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lkrs;->d:I

    move v1, v0

    .line 109
    .end local v0    # "a":I
    .local v1, "a":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "a":I
    .restart local v0    # "a":I
    if-lez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lkrs;->a()Lkrt;

    move-result-object v2

    .line 111
    .local v2, "c":Lkrt;
    invoke-interface {v2, p1}, Lkrt;->a(Lkrt;)V

    .line 112
    invoke-interface {p1, v2, v0}, Lkrt;->a(Lkrt;I)V

    move v1, v0

    .line 113
    .end local v0    # "a":I
    .restart local v1    # "a":I
    goto :goto_0

    .line 2043
    .end local v1    # "a":I
    .end local v2    # "c":Lkrt;
    .restart local v0    # "a":I
    :cond_0
    iget-object v3, p0, Lkrs;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2044
    iget v3, p0, Lkrs;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lkrs;->c:I

    .line 116
    const/4 v3, 0x1

    iput-boolean v3, p0, Lkrs;->e:Z

    .line 121
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    :goto_0
    iget v0, p0, Lkrs;->c:I

    iget v1, p0, Lkrs;->d:I

    if-le v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lkrs;->a()Lkrt;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lkrs;->b:Ljava/util/List;

    iget-object v1, p0, Lkrs;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lkrs;->d:I

    .line 73
    return-void
.end method
