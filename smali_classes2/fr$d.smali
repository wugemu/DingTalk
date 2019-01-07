.class final Lfr$d;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Lfr;


# direct methods
.method constructor <init>(Lfr;)V
    .locals 1
    .param p1, "this$0"    # Lfr;

    .prologue
    .line 77
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    iput-object p1, p0, Lfr$d;->d:Lfr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr$d;->c:Z

    .line 78
    invoke-virtual {p1}, Lfr;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr$d;->a:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lfr$d;->b:I

    .line 80
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    iget-boolean v3, p0, Lfr$d;->c:Z

    if-nez v3, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This container does not support retaining Map.Entry objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    .line 144
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p1

    .line 142
    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lfr$d;->d:Lfr;

    iget v5, p0, Lfr$d;->b:I

    invoke-virtual {v4, v5, v1}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lfm;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lfr$d;->d:Lfr;

    iget v5, p0, Lfr$d;->b:I

    invoke-virtual {v4, v5, v2}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lfm;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 108
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    iget-boolean v0, p0, Lfr$d;->c:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lfr$d;->d:Lfr;

    iget v1, p0, Lfr$d;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 117
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    iget-boolean v0, p0, Lfr$d;->c:Z

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lfr$d;->d:Lfr;

    iget v1, p0, Lfr$d;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    iget v0, p0, Lfr$d;->b:I

    iget v1, p0, Lfr$d;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    const/4 v2, 0x0

    .line 149
    iget-boolean v3, p0, Lfr$d;->c:Z

    if-nez v3, :cond_0

    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_0
    iget-object v3, p0, Lfr$d;->d:Lfr;

    iget v4, p0, Lfr$d;->b:I

    invoke-virtual {v3, v4, v2}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "key":Ljava/lang/Object;
    iget-object v3, p0, Lfr$d;->d:Lfr;

    iget v4, p0, Lfr$d;->b:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v1

    .line 155
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v2

    :goto_0
    if-nez v1, :cond_2

    .line 156
    :goto_1
    xor-int/2addr v2, v3

    return v2

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    .line 1089
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    invoke-virtual {p0}, Lfr$d;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1090
    :cond_0
    iget v0, p0, Lfr$d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr$d;->b:I

    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr$d;->c:Z

    .line 72
    return-object p0
.end method

.method public final remove()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 97
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    iget-boolean v0, p0, Lfr$d;->c:Z

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lfr$d;->d:Lfr;

    iget v1, p0, Lfr$d;->b:I

    invoke-virtual {v0, v1}, Lfr;->a(I)V

    .line 101
    iget v0, p0, Lfr$d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr$d;->b:I

    .line 102
    iget v0, p0, Lfr$d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr$d;->a:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr$d;->c:Z

    .line 104
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lfr$d;->c:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lfr$d;->d:Lfr;

    iget v1, p0, Lfr$d;->b:I

    invoke-virtual {v0, v1, p1}, Lfr;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 161
    .local p0, "this":Lfr$d;, "Lfr<TK;TV;>.d;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lfr$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lfr$d;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
