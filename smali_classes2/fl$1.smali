.class final Lfl$1;
.super Lfr;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfr",
        "<TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfl;


# direct methods
.method constructor <init>(Lfl;)V
    .locals 0
    .param p1, "this$0"    # Lfl;

    .prologue
    .line 666
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iput-object p1, p0, Lfl$1;->a:Lfl;

    invoke-direct {p0}, Lfr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 669
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    iget v0, v0, Lfl;->h:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 679
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    invoke-virtual {v0, p1}, Lfl;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 674
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    iget-object v0, v0, Lfl;->g:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 699
    .local p0, "this":Lfl$1;, "Lfl$1;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 704
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    invoke-virtual {v0, p1}, Lfl;->a(I)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method protected final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lfl$1;, "Lfl$1;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    invoke-virtual {v0, p1}, Lfl;->add(Ljava/lang/Object;)Z

    .line 695
    return-void
.end method

.method protected final b(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 684
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    invoke-virtual {v0, p1}, Lfl;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 689
    .local p0, "this":Lfl$1;, "Lfl$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 709
    .local p0, "this":Lfl$1;, "Lfl$1;"
    iget-object v0, p0, Lfl$1;->a:Lfl;

    invoke-virtual {v0}, Lfl;->clear()V

    .line 710
    return-void
.end method
