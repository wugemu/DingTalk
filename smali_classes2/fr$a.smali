.class final Lfr$a;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field b:I

.field c:I

.field d:Z

.field final synthetic e:Lfr;


# direct methods
.method constructor <init>(Lfr;I)V
    .locals 1
    .param p1, "this$0"    # Lfr;
    .param p2, "offset"    # I

    .prologue
    .line 41
    .local p0, "this":Lfr$a;, "Lfr<TK;TV;>.a<TT;>;"
    iput-object p1, p0, Lfr$a;->e:Lfr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr$a;->d:Z

    .line 42
    iput p2, p0, Lfr$a;->a:I

    .line 43
    invoke-virtual {p1}, Lfr;->a()I

    move-result v0

    iput v0, p0, Lfr$a;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    .local p0, "this":Lfr$a;, "Lfr<TK;TV;>.a<TT;>;"
    iget v0, p0, Lfr$a;->c:I

    iget v1, p0, Lfr$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    .local p0, "this":Lfr$a;, "Lfr<TK;TV;>.a<TT;>;"
    invoke-virtual {p0}, Lfr$a;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 54
    :cond_0
    iget-object v1, p0, Lfr$a;->e:Lfr;

    iget v2, p0, Lfr$a;->c:I

    iget v3, p0, Lfr$a;->a:I

    invoke-virtual {v1, v2, v3}, Lfr;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lfr$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfr$a;->c:I

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfr$a;->d:Z

    .line 57
    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 62
    .local p0, "this":Lfr$a;, "Lfr<TK;TV;>.a<TT;>;"
    iget-boolean v0, p0, Lfr$a;->d:Z

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iget v0, p0, Lfr$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr$a;->c:I

    .line 66
    iget v0, p0, Lfr$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfr$a;->b:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr$a;->d:Z

    .line 68
    iget-object v0, p0, Lfr$a;->e:Lfr;

    iget v1, p0, Lfr$a;->c:I

    invoke-virtual {v0, v1}, Lfr;->a(I)V

    .line 69
    return-void
.end method
